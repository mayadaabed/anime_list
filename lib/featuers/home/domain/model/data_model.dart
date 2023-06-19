import 'attributes_model.dart';
import 'link_model.dart';

class DataModel {
  String? id;
  String? type;
  LinkModel? links;
  AttributesModel? attributesResponse;

  DataModel({
    this.id,
    this.type,
    this.links,
    this.attributesResponse,
  });
}
