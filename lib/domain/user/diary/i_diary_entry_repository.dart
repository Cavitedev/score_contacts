import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/diary/diary_entry.dart';
import 'package:scorecontacts/domain/user/diary/diary_failure.dart';

abstract class IDiaryEntryRepository{

  //CRUD
  Future<Either<DiaryFailure, Unit>> createDiaryEntry(DiaryEntry entry);

  Stream<Either<DiaryFailure, List<DiaryEntry>>> watchAll();

  Stream<Either<DiaryFailure, List<DiaryEntry>>> watchByMentionableId(UniqueID id);

  Future<Either<DiaryFailure, Unit>> updateDiaryEntry(DiaryEntry entry);

  Future<Either<DiaryFailure, Unit>> deleteDiaryEntry(DiaryEntry entry);

}