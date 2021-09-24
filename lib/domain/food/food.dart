import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';

@freezed
class Food with _$Food {
  const Food._();

  factory Food({
    required String meal,
    required String thumb,
    required String id,
  }) = _Food;
}
