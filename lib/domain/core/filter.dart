import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class Filter with _$Filter{
    const Filter._();

    const factory Filter({String? filterSearch}) = _Filter;




      }