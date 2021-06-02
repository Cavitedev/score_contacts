import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/domain/user/diary/i_diary_entry_repository.dart';
import 'package:scorecontacts/infrastructure/core/firebase_user_helper.dart';
import 'package:scorecontacts/infrastructure/diary/diary_entry_dtos.dart';
import 'package:scorecontacts/infrastructure/firebase_core/codes.dart';

@LazySingleton(as: IDiaryEntryRepository)
class DiaryEntryRepository implements IDiaryEntryRepository {
  final FirebaseFirestore firestore;

  DiaryEntryRepository(this.firestore);

  @override
  Future<Either<DiaryFailure, Unit>> createDiaryEntry(DiaryEntry entry) async {
    final collection = firestore.userDocument().diaryEntryCollection;
    final DiaryEntryDto dto = DiaryEntryDto.fromDomain(entry);
    try {
      collection.doc(dto.id).set(dto.toJson());
      return right(unit);
    } catch (e) {
      return left(_handleException(e));
    }
  }

  @override
  Stream<Either<DiaryFailure, List<DiaryEntry>>> watchAll() async* {
    final collection = firestore.userDocument().diaryEntryCollection;
    yield* collection
        .snapshots()
        .map((snapshot) => right<DiaryFailure, List<DiaryEntry>>(snapshot.docs
            .map((doc) => DiaryEntryDto.fromfirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) => left(_handleException(e)));
  }

  @override
  Stream<Either<DiaryFailure, List<DiaryEntry>>> watchByMentionableId(
      UniqueID id) async* {
    final collection = firestore.userDocument().diaryEntryCollection;
    yield* collection.where("mentions.id", isEqualTo: id.value)
        .snapshots()
        .map((snapshot) => right<DiaryFailure, List<DiaryEntry>>(snapshot.docs
            .map((doc) => DiaryEntryDto.fromfirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) => left(_handleException(e)));
  }

  @override
  Future<Either<DiaryFailure, Unit>> updateDiaryEntry(DiaryEntry entry) async {
    final collection = firestore.userDocument().diaryEntryCollection;
    final DiaryEntryDto dto = DiaryEntryDto.fromDomain(entry);
    try {
      collection.doc(dto.id).update(dto.toJson());
      return right(unit);
    } catch (e) {
      return left(_handleException(e));
    }
  }

  @override
  Future<Either<DiaryFailure, Unit>> deleteDiaryEntry(DiaryEntry entry) async {
    final collection = firestore.userDocument().diaryEntryCollection;
    try {
      collection.doc(entry.id.value).delete();
      return right(unit);
    } catch (e) {
      return left(_handleException(e));
    }
  }

  DiaryFailure _handleException(Object e) {
    if (e is PlatformException &&
        (e.message!.contains(PERMISSIONDENIEDCODE) || e.code == UNATHORIZED)) {
      return const DiaryFailure.insufficientPermissions();
    } else if (e is PlatformException && e.message!.contains(NOTFOUNDCODE)) {
      return const DiaryFailure.notFound();
    } else {
      return const DiaryFailure.unexpected();
    }
  }
}
