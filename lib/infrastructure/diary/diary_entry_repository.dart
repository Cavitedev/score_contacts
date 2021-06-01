import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';
import 'package:scorecontacts/domain/user/diary/i_diary_entry_repository.dart';

@LazySingleton(as: IDiaryEntryRepository)
class DiaryEntryRepository implements IDiaryEntryRepository {
  final FirebaseFirestore firestore;

  const DiaryEntryRepository(this.firestore);

  @override
  Future<Either<DiaryFailure, Unit>> createDiaryEntry(DiaryEntry entry) {

    throw UnimplementedError();
  }

  @override
  Future<Either<DiaryFailure, Unit>> deleteDiaryEntry(DiaryEntry entry) {
    throw UnimplementedError();
  }

  @override
  Future<Either<DiaryFailure, Unit>> updateDiaryEntry(DiaryEntry entry) {
    throw UnimplementedError();
  }
}
