import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeTimeStampConverter implements JsonConverter<DateTime, Timestamp> {
  const DateTimeTimeStampConverter();

  @override
  DateTime fromJson(Object? timestamp) {
    return (timestamp as Timestamp?)?.toDate() ?? DateTime.now();
  }

  @override
  Timestamp toJson(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }
}
