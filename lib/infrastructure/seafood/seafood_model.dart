import 'package:flutter_getx_cart/domain/food/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seafood_model.freezed.dart';
part 'seafood_model.g.dart';

@freezed
class SeafoodModel with _$SeafoodModel {
  const SeafoodModel._();

  const factory SeafoodModel({
    @JsonKey(name: 'strMeal') required String meal,
    @JsonKey(name: 'strMealThumb') required String thumb,
    @JsonKey(name: 'idMeal') required String id,
  }) = _SeafoodModel;

  factory SeafoodModel.fromJson(Map<String, dynamic> json) =>
      _$SeafoodModelFromJson(json);

  Food toDomain() {
    return Food(meal: meal, thumb: thumb, id: id);
  }
}
