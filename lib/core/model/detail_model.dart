// To parse this JSON data, do
//
//     final hyDetailModel = hyDetailModelFromJson(jsonString);

import 'dart:convert';

DetailModel detailModelFromJson(String str) => DetailModel.fromJson(json.decode(str));

String detailModelToJson(DetailModel data) => json.encode(data.toJson());

class DetailModel {
  String iid;
  Result result;
  Status status;

  DetailModel(
    this.iid,
    this.result,
    this.status,
  );

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
    json["iid"],
    Result.fromJson(json["result"]),
    Status.fromJson(json["status"]),
  );

  Map<String, dynamic> toJson() => {
    "iid": iid,
    "result": result.toJson(),
    "status": status.toJson(),
  };
}

class Result {
  List<String> columns;
  DetailInfo detailInfo;
  String esi;
  bool isLogin;
  ItemInfo itemInfo;
  ItemParams itemParams;
  Promotions promotions;
  Rate rate;
  ShopInfo shopInfo;
  SkuInfo skuInfo;
  TopBar topBar;

  Result(
    this.columns,
    this.detailInfo,
    this.esi,
    this.isLogin,
    this.itemInfo,
    this.itemParams,
    this.promotions,
    this.rate,
    this.shopInfo,
    this.skuInfo,
    this.topBar,
  );

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    List<String>.from(json["columns"].map((x) => x)),
    DetailInfo.fromJson(json["detailInfo"]),
    json["esi"],
    json["isLogin"],
    ItemInfo.fromJson(json["itemInfo"]),
    ItemParams.fromJson(json["itemParams"]),
    Promotions.fromJson(json["promotions"]),
    Rate.fromJson(json["rate"]),
    ShopInfo.fromJson(json["shopInfo"]),
    SkuInfo.fromJson(json["skuInfo"]),
    TopBar.fromJson(json["topBar"]),
  );

  Map<String, dynamic> toJson() => {
    "columns": List<dynamic>.from(columns.map((x) => x)),
    "detailInfo": detailInfo.toJson(),
    "esi": esi,
    "isLogin": isLogin,
    "itemInfo": itemInfo.toJson(),
    "itemParams": itemParams.toJson(),
    "promotions": promotions.toJson(),
    "rate": rate.toJson(),
    "shopInfo": shopInfo.toJson(),
    "skuInfo": skuInfo.toJson(),
    "topBar": topBar.toJson(),
  };
}

class DetailInfo {
  String desc;
  List<DetailImage> detailImage;

  DetailInfo(
    this.desc,
    this.detailImage,
  );

  factory DetailInfo.fromJson(Map<String, dynamic> json) => DetailInfo(
    json["desc"],
    List<DetailImage>.from(json["detailImage"].map((x) => DetailImage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "desc": desc,
    "detailImage": List<dynamic>.from(detailImage.map((x) => x.toJson())),
  };
}

class DetailImage {
  String anchor;
  String desc;
  String key;
  List<String> list;

  DetailImage(
    this.anchor,
    this.desc,
    this.key,
    this.list,
  );

  factory DetailImage.fromJson(Map<String, dynamic> json) => DetailImage(
    json["anchor"],
    json["desc"],
    json["key"],
    List<String>.from(json["list"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "anchor": anchor,
    "desc": desc,
    "key": key,
    "list": List<dynamic>.from(list.map((x) => x)),
  };
}

class ItemInfo {
  bool addCartTips;
  bool admin;
  int cFav;
  int cartNum;
  String cids;
  String desc;
  String discountBgColor;
  String discountDesc;
  Extra extra;
  String highNowPrice;
  String highPrice;
  String iid;
  String imUrl;
  bool inActivity;
  bool isFaved;
  bool isGrayUser;
  bool isNewComer;
  bool isSelf;
  String lowNowPrice;
  String lowPrice;
  String oldPrice;
  String price;
  bool redPacketsSwitch;
  int saleType;
  String shopId;
  int state;
  String tags;
  String title;
  List<String> topImages;
  String userId;

  ItemInfo(
    this.addCartTips,
    this.admin,
    this.cFav,
    this.cartNum,
    this.cids,
    this.desc,
    this.discountBgColor,
    this.discountDesc,
    this.extra,
    this.highNowPrice,
    this.highPrice,
    this.iid,
    this.imUrl,
    this.inActivity,
    this.isFaved,
    this.isGrayUser,
    this.isNewComer,
    this.isSelf,
    this.lowNowPrice,
    this.lowPrice,
    this.oldPrice,
    this.price,
    this.redPacketsSwitch,
    this.saleType,
    this.shopId,
    this.state,
    this.tags,
    this.title,
    this.topImages,
    this.userId,
  );

  factory ItemInfo.fromJson(Map<String, dynamic> json) => ItemInfo(
    json["addCartTips"],
    json["admin"],
    json["cFav"],
    json["cartNum"],
    json["cids"],
    json["desc"],
    json["discountBgColor"],
    json["discountDesc"],
    Extra.fromJson(json["extra"]),
    json["highNowPrice"],
    json["highPrice"],
    json["iid"],
    json["imUrl"],
    json["inActivity"],
    json["isFaved"],
    json["isGrayUser"],
    json["isNewComer"],
    json["isSelf"],
    json["lowNowPrice"],
    json["lowPrice"],
    json["oldPrice"],
    json["price"],
    json["redPacketsSwitch"],
    json["saleType"],
    json["shopId"],
    json["state"],
    json["tags"],
    json["title"],
    List<String>.from(json["topImages"].map((x) => x)),
    json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "addCartTips": addCartTips,
    "admin": admin,
    "cFav": cFav,
    "cartNum": cartNum,
    "cids": cids,
    "desc": desc,
    "discountBgColor": discountBgColor,
    "discountDesc": discountDesc,
    "extra": extra.toJson(),
    "highNowPrice": highNowPrice,
    "highPrice": highPrice,
    "iid": iid,
    "imUrl": imUrl,
    "inActivity": inActivity,
    "isFaved": isFaved,
    "isGrayUser": isGrayUser,
    "isNewComer": isNewComer,
    "isSelf": isSelf,
    "lowNowPrice": lowNowPrice,
    "lowPrice": lowPrice,
    "oldPrice": oldPrice,
    "price": price,
    "redPacketsSwitch": redPacketsSwitch,
    "saleType": saleType,
    "shopId": shopId,
    "state": state,
    "tags": tags,
    "title": title,
    "topImages": List<dynamic>.from(topImages.map((x) => x)),
    "userId": userId,
  };
}

class Extra {
  int deliveryTime;
  String sendAddress;

  Extra(
    this.deliveryTime,
    this.sendAddress,
  );

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
    json["deliveryTime"],
    json["sendAddress"],
  );

  Map<String, dynamic> toJson() => {
    "deliveryTime": deliveryTime,
    "sendAddress": sendAddress,
  };
}

class ItemParams {
  Info info;
  Rule rule;

  ItemParams(
    this.info,
    this.rule,
  );

  factory ItemParams.fromJson(Map<String, dynamic> json) => ItemParams(
    Info.fromJson(json["info"]),
    Rule.fromJson(json["rule"]),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
    "rule": rule.toJson(),
  };
}

class Info {
  String anchor;
  String key;
  List<Set> infoSet;

  Info(
    this.anchor,
    this.key,
    this.infoSet,
  );

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    json["anchor"],
    json["key"],
    List<Set>.from(json["set"].map((x) => Set.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "anchor": anchor,
    "key": key,
    "set": List<dynamic>.from(infoSet.map((x) => x.toJson())),
  };
}

class Set {
  String key;
  String value;

  Set(
    this.key,
    this.value,
  );

  factory Set.fromJson(Map<String, dynamic> json) => Set(
    json["key"],
    json["value"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
  };
}

class Rule {
  String anchor;
  String disclaimer;
  String key;
  List<List<List<String>>> tables;

  Rule(
    this.anchor,
    this.disclaimer,
    this.key,
    this.tables,
  );

  factory Rule.fromJson(Map<String, dynamic> json) => Rule(
    json["anchor"],
    json["disclaimer"],
    json["key"],
    List<List<List<String>>>.from(json["tables"].map((x) => List<List<String>>.from(x.map((x) => List<String>.from(x.map((x) => x)))))),
  );

  Map<String, dynamic> toJson() => {
    "anchor": anchor,
    "disclaimer": disclaimer,
    "key": key,
    "tables": List<dynamic>.from(tables.map((x) => List<dynamic>.from(x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
  };
}

class Promotions {
  AlertData alertData;
  String link;
  List<String> list;

  Promotions(
    this.alertData,
    this.link,
    this.list,
  );

  factory Promotions.fromJson(Map<String, dynamic> json) => Promotions(
    AlertData.fromJson(json["alertData"]),
    json["link"],
    List<String>.from(json["list"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "alertData": alertData.toJson(),
    "link": link,
    "list": List<dynamic>.from(list.map((x) => x)),
  };
}

class AlertData {
  AlertData();

  factory AlertData.fromJson(Map<String, dynamic> json) => AlertData(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Rate {
  int cRate;
  List<RateList> list;

  Rate(
    this.cRate,
    this.list,
  );

  factory Rate.fromJson(Map<String, dynamic> json) => Rate(
    json["cRate"],
    List<RateList>.from(json["list"].map((x) => RateList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "cRate": cRate,
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
  };
}

class RateList {
  bool canExplain;
  String content;
  int created;
  List<String> extraInfo;
  List<String> images;
  int isAnonymous;
  int isEmpty;
  String level;
  String rateId;
  String style;
  User user;

  RateList(
    this.canExplain,
    this.content,
    this.created,
    this.extraInfo,
    this.images,
    this.isAnonymous,
    this.isEmpty,
    this.level,
    this.rateId,
    this.style,
    this.user,
  );

  factory RateList.fromJson(Map<String, dynamic> json) => RateList(
    json["canExplain"],
    json["content"],
    json["created"],
    List<String>.from(json["extraInfo"].map((x) => x)),
    List<String>.from(json["images"].map((x) => x)),
    json["isAnonymous"],
    json["isEmpty"],
    json["level"],
    json["rateId"],
    json["style"],
    User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "canExplain": canExplain,
    "content": content,
    "created": created,
    "extraInfo": List<dynamic>.from(extraInfo.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x)),
    "isAnonymous": isAnonymous,
    "isEmpty": isEmpty,
    "level": level,
    "rateId": rateId,
    "style": style,
    "user": user.toJson(),
  };
}

class User {
  String avatar;
  String profileUrl;
  String tagIndex;
  String uid;
  String uname;

  User(
    this.avatar,
    this.profileUrl,
    this.tagIndex,
    this.uid,
    this.uname,
  );

  factory User.fromJson(Map<String, dynamic> json) => User(
    json["avatar"],
    json["profileUrl"],
    json["tagIndex"],
    json["uid"],
    json["uname"],
  );

  Map<String, dynamic> toJson() => {
    "avatar": avatar,
    "profileUrl": profileUrl,
    "tagIndex": tagIndex,
    "uid": uid,
    "uname": uname,
  };
}

class ShopInfo {
  String allGoodsUrl;
  int cFans;
  int cGoods;
  int cSells;
  List<Category> categories;
  bool isMarked;
  int level;
  String name;
  bool nonsupportReasonRefound;
  List<Score> score;
  List<Service> services;
  String shopId;
  String shopLogo;
  String shopUrl;
  int type;
  String userId;

  ShopInfo(
    this.allGoodsUrl,
    this.cFans,
    this.cGoods,
    this.cSells,
    this.categories,
    this.isMarked,
    this.level,
    this.name,
    this.nonsupportReasonRefound,
    this.score,
    this.services,
    this.shopId,
    this.shopLogo,
    this.shopUrl,
    this.type,
    this.userId,
  );

  factory ShopInfo.fromJson(Map<String, dynamic> json) => ShopInfo(
    json["allGoodsUrl"],
    json["cFans"],
    json["cGoods"],
    json["cSells"],
    List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    json["isMarked"],
    json["level"],
    json["name"],
    json["nonsupportReasonRefound"],
    List<Score>.from(json["score"].map((x) => Score.fromJson(x))),
    List<Service>.from(json["services"].map((x) => Service.fromJson(x))),
    json["shopId"],
    json["shopLogo"],
    json["shopUrl"],
    json["type"],
    json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "allGoodsUrl": allGoodsUrl,
    "cFans": cFans,
    "cGoods": cGoods,
    "cSells": cSells,
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "isMarked": isMarked,
    "level": level,
    "name": name,
    "nonsupportReasonRefound": nonsupportReasonRefound,
    "score": List<dynamic>.from(score.map((x) => x.toJson())),
    "services": List<dynamic>.from(services.map((x) => x.toJson())),
    "shopId": shopId,
    "shopLogo": shopLogo,
    "shopUrl": shopUrl,
    "type": type,
    "userId": userId,
  };
}

class Category {
  String link;
  String name;

  Category(
    this.link,
    this.name,
  );

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    json["link"],
    json["name"],
  );

  Map<String, dynamic> toJson() => {
    "link": link,
    "name": name,
  };
}

class Score {
  bool isBetter;
  String name;
  double score;

  Score(
    this.isBetter,
    this.name,
    this.score,
  );

  factory Score.fromJson(Map<String, dynamic> json) => Score(
    json["isBetter"],
    json["name"],
    json["score"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "isBetter": isBetter,
    "name": name,
    "score": score,
  };
}

class Service {
  String icon;
  String name;

  Service(
    this.icon,
    this.name,
  );

  factory Service.fromJson(Map<String, dynamic> json) => Service(
    json["icon"],
    json["name"],
  );

  Map<String, dynamic> toJson() => {
    "icon": icon,
    "name": name,
  };
}

class SkuInfo {
  String defaultPrice;
  bool isAbroad;
  String priceRange;
  List<Prop> props;
  String sizeKey;
  List<Skus> skus;
  String styleKey;
  String title;
  int totalStock;

  SkuInfo(
    this.defaultPrice,
    this.isAbroad,
    this.priceRange,
    this.props,
    this.sizeKey,
    this.skus,
    this.styleKey,
    this.title,
    this.totalStock,
  );

  factory SkuInfo.fromJson(Map<String, dynamic> json) => SkuInfo(
    json["defaultPrice"],
    json["isAbroad"],
    json["priceRange"],
    List<Prop>.from(json["props"].map((x) => Prop.fromJson(x))),
    json["sizeKey"],
    List<Skus>.from(json["skus"].map((x) => Skus.fromJson(x))),
    json["styleKey"],
    json["title"],
    json["totalStock"],
  );

  Map<String, dynamic> toJson() => {
    "defaultPrice": defaultPrice,
    "isAbroad": isAbroad,
    "priceRange": priceRange,
    "props": List<dynamic>.from(props.map((x) => x.toJson())),
    "sizeKey": sizeKey,
    "skus": List<dynamic>.from(skus.map((x) => x.toJson())),
    "styleKey": styleKey,
    "title": title,
    "totalStock": totalStock,
  };
}

class Prop {
  bool isDefault;
  String label;
  List<PropList> list;

  Prop(
    this.isDefault,
    this.label,
    this.list,
  );

  factory Prop.fromJson(Map<String, dynamic> json) => Prop(
    json["isDefault"],
    json["label"],
    List<PropList>.from(json["list"].map((x) => PropList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isDefault": isDefault,
    "label": label,
    "list": List<dynamic>.from(list.map((x) => x.toJson())),
  };
}

class PropList {
  int index;
  bool isDefault;
  String name;
  int? styleId;
  String type;
  int? sizeId;

  PropList(
    this.index,
    this.isDefault,
    this.name,
    this.styleId,
    this.type,
    this.sizeId,
  );

  factory PropList.fromJson(Map<String, dynamic> json) => PropList(
    json["index"],
    json["isDefault"],
    json["name"],
    json["styleId"] == null ? null : json["styleId"],
    json["type"],
    json["sizeId"] == null ? null : json["sizeId"],
  );

  Map<String, dynamic> toJson() => {
    "index": index,
    "isDefault": isDefault,
    "name": name,
    "styleId": styleId == null ? null : styleId,
    "type": type,
    "sizeId": sizeId == null ? null : sizeId,
  };
}

class Skus {
  Currency? currency;
  String img;
  int nowprice;
  int price;
  String size;
  int sizeId;
  int stock;
  String stockId;
  Style? style;
  int styleId;
  String xdSkuId;

  Skus(
    this.currency,
    this.img,
    this.nowprice,
    this.price,
    this.size,
    this.sizeId,
    this.stock,
    this.stockId,
    this.style,
    this.styleId,
    this.xdSkuId,
  );

  factory Skus.fromJson(Map<String, dynamic> json) => Skus(
    currencyValues.map[json["currency"]],
    json["img"],
    json["nowprice"],
    json["price"],
    json["size"],
    json["sizeId"],
    json["stock"],
    json["stockId"],
    styleValues.map[json["style"]],
    json["styleId"],
    json["xdSkuId"],
  );

  Map<String, dynamic> toJson() => {
    "currency": currencyValues.reverse![currency] ,
    "img": img,
    "nowprice": nowprice,
    "price": price,
    "size": size,
    "sizeId": sizeId,
    "stock": stock,
    "stockId": stockId,
    "style": styleValues.reverse![style],
    "styleId": styleId,
    "xdSkuId": xdSkuId,
  };
}

enum Currency { EMPTY }

final currencyValues = EnumValues({
  "￥": Currency.EMPTY
});

enum Style { EMPTY, STYLE, PURPLE, FLUFFY }

final styleValues = EnumValues({
  "白色": Style.EMPTY,
  "卡其色": Style.FLUFFY,
  "蓝色": Style.PURPLE,
  "粉红色": Style.STYLE
});

class TopBar {
  String img;
  String link;

  TopBar(
    this.img,
    this.link,
  );

  factory TopBar.fromJson(Map<String, dynamic> json) => TopBar(
    json["img"],
    json["link"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "link": link,
  };
}

class Status {
  int code;
  String msg;

  Status(
    this.code,
    this.msg,
  );

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    json["code"],
    json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "msg": msg,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
