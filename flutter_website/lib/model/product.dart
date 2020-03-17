class ProductListModel {

  String code;
  String message;
  List<ProductModel> data;

  ProductListModel(this.data);

  ProductListModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['msg'];
    if (json['data'] != null) {
      data = List<ProductModel>();
      json['data'].forEach((v){
        data.add(ProductModel.fromJson(v))
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductModel {

  String productId;
  String desc;
  String type;
  String name;
  String imageUrl;
  String point;

  ProductModel({this.productId, this.desc, this.type, this.name, this.imageUrl, this.point});

  ProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    desc = json['desc'];
    type = json['type'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    point = json['point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['desc'] = this.desc;
    data['type'] = this.type;
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    data['point'] = this.point;
  }

}