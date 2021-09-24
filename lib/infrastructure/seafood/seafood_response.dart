import 'package:flutter_getx_cart/infrastructure/seafood/seafood_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seafood_response.freezed.dart';
part 'seafood_response.g.dart';

@freezed
class SeafoodResponse with _$SeafoodResponse {
  const factory SeafoodResponse.get({
    required List<SeafoodModel> meals,
  }) = GetSeafoodResponse;

  factory SeafoodResponse.fromJson(Map<String, dynamic> json) =>
      _$SeafoodResponseFromJson(json);
}
