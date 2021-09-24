import 'package:flutter_getx_cart/domain/http/http.dart';
import 'package:flutter_getx_cart/infrastructure/seafood/seafood_response.dart';

class SeafoodRepository {
  final Http http;

  SeafoodRepository({
    required this.http,
  });

  Future<GetSeafoodResponse> getSeaFood() async {
    final res = await http.get('filter.php?c=Seafood');
    return GetSeafoodResponse.fromJson(res.body);
  }
}
