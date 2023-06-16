import '../../../domain/model/manga_models/prop_model.dart';
import '../../response/manga_response/prop_response.dart';
import 'from_mapper.dart';

extension PropMapper on PropResponse {
  PropModel toDomain() {
    return PropModel(
      from: from?.toDomain(),
      to: to?.toDomain(),
    );
  }
}
