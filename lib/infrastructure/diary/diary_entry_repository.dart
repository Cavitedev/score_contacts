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
            .map(
              (doc) => DiaryEntryDto.fromfirestore(doc).toDomain(),
            )
            .toList()))
        .onErrorReturnWith((e, _) => left(_handleException(e)));
  }

  @override
  Stream<Either<DiaryFailure, List<DiaryEntry>>> watchByMentionableId(
      UniqueID id) async* {
    final collection = firestore.userDocument().diaryEntryCollection;
    yield* collection
    .where(DiaryEntryDto.mentionIdsName, arrayContains: id.value)
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

  @override
  Future<Either<DiaryFailure, Unit>> deleteDiaryEntryList(List<DiaryEntry> entryList) {
    return _performBatch(entryList, _deleteEntriesBatch);
  }

  Future<Either<DiaryFailure, Unit>> _deleteEntriesBatch(
      List<DiaryEntry> entryList) async {
    final batch = firestore.batch();
    final CollectionReference collection = firestore.userDocument().diaryEntryCollection;
    for (final DiaryEntry entry in entryList) {
      batch.delete(collection.doc(entry.id.value));
    }
    try {
      await batch.commit();
      return right(unit);
    } catch (e) {
      return left(_handleException(e));
    }
  }

  Future<R> _performBatch<R extends Either, P extends List>(
      P batchList, Future<R> Function(P) batchOperation) async {
    const int range = 200;

    while (batchList.length >= range) {
      final P subList = batchList.sublist(0, range) as P;
      final either = await batchOperation(subList);
      batchList.removeRange(0, range);
      if (either.isLeft()) {
        return batchOperation(batchList);
      }
    }
    return batchOperation(batchList);
  }
}
