class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.store,
    this.isPurchased,
    this.attributesData,
    this.links,
  });

  int id;
  String name;
  String slug;
  String permalink;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  Type type;
  Status status;
  bool featured;
  CatalogVisibility catalogVisibility;
  String description;
  String shortDescription;
  String sku;
  dynamic price;
  dynamic regularPrice;
  String salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool onSale;
  bool purchasable;
  int totalSales;
  bool virtual;
  bool downloadable;
  List<dynamic> downloads;
  int downloadLimit;
  int downloadExpiry;
  String externalUrl;
  String buttonText;
  TaxStatus taxStatus;
  String taxClass;
  bool manageStock;
  dynamic stockQuantity;
  Backorders backorders;
  bool backordersAllowed;
  bool backordered;
  bool soldIndividually;
  String weight;
  Dimensions dimensions;
  bool shippingRequired;
  bool shippingTaxable;
  String shippingClass;
  int shippingClassId;
  bool reviewsAllowed;
  String averageRating;
  int ratingCount;
  List<dynamic> upsellIds;
  List<dynamic> crossSellIds;
  int parentId;
  String purchaseNote;
  List<Category> categories;
  List<dynamic> tags;
  List<Image> images;
  List<dynamic> attributes;
  List<dynamic> defaultAttributes;
  List<dynamic> variations;
  List<dynamic> groupedProducts;
  int menuOrder;
  String priceHtml;
  List<int> relatedIds;
  List<MetaDatum> metaData;
  StockStatus stockStatus;
  Store store;
  bool isPurchased;
  List<dynamic> attributesData;
  Links links;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    permalink: json["permalink"],
    dateCreated: DateTime.parse(json["date_created"]),
    dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
    dateModified: DateTime.parse(json["date_modified"]),
    dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
    type: typeValues.map[json["type"]],
    status: statusValues.map[json["status"]],
    featured: json["featured"],
    catalogVisibility: catalogVisibilityValues.map[json["catalog_visibility"]],
    description: json["description"],
    shortDescription: json["short_description"],
    sku: json["sku"],
    price: json["price"],
    regularPrice: json["regular_price"],
    salePrice: json["sale_price"],
    dateOnSaleFrom: json["date_on_sale_from"],
    dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
    dateOnSaleTo: json["date_on_sale_to"],
    dateOnSaleToGmt: json["date_on_sale_to_gmt"],
    onSale: json["on_sale"],
    purchasable: json["purchasable"],
    totalSales: json["total_sales"],
    virtual: json["virtual"],
    downloadable: json["downloadable"],
    downloads: List<dynamic>.from(json["downloads"].map((x) => x)),
    downloadLimit: json["download_limit"],
    downloadExpiry: json["download_expiry"],
    externalUrl: json["external_url"],
    buttonText: json["button_text"],
    taxStatus: taxStatusValues.map[json["tax_status"]],
    taxClass: json["tax_class"],
    manageStock: json["manage_stock"],
    stockQuantity: json["stock_quantity"],
    backorders: backordersValues.map[json["backorders"]],
    backordersAllowed: json["backorders_allowed"],
    backordered: json["backordered"],
    soldIndividually: json["sold_individually"],
    weight: json["weight"],
    dimensions: Dimensions.fromJson(json["dimensions"]),
    shippingRequired: json["shipping_required"],
    shippingTaxable: json["shipping_taxable"],
    shippingClass: json["shipping_class"],
    shippingClassId: json["shipping_class_id"],
    reviewsAllowed: json["reviews_allowed"],
    averageRating: json["average_rating"],
    ratingCount: json["rating_count"],
    upsellIds: List<dynamic>.from(json["upsell_ids"].map((x) => x)),
    crossSellIds: List<dynamic>.from(json["cross_sell_ids"].map((x) => x)),
    parentId: json["parent_id"],
    purchaseNote: json["purchase_note"],
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
    defaultAttributes: List<dynamic>.from(json["default_attributes"].map((x) => x)),
    variations: List<dynamic>.from(json["variations"].map((x) => x)),
    groupedProducts: List<dynamic>.from(json["grouped_products"].map((x) => x)),
    menuOrder: json["menu_order"],
    priceHtml: json["price_html"],
    relatedIds: List<int>.from(json["related_ids"].map((x) => x)),
    metaData: List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
    stockStatus: stockStatusValues.map[json["stock_status"]],
    store: Store.fromJson(json["store"]),
    isPurchased: json["is_purchased"],
    attributesData: List<dynamic>.from(json["attributesData"].map((x) => x)),
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "permalink": permalink,
    "date_created": dateCreated.toIso8601String(),
    "date_created_gmt": dateCreatedGmt.toIso8601String(),
    "date_modified": dateModified.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt.toIso8601String(),
    "type": typeValues.reverse[type],
    "status": statusValues.reverse[status],
    "featured": featured,
    "catalog_visibility": catalogVisibilityValues.reverse[catalogVisibility],
    "description": description,
    "short_description": shortDescription,
    "sku": sku,
    "price": price,
    "regular_price": regularPrice,
    "sale_price": salePrice,
    "date_on_sale_from": dateOnSaleFrom,
    "date_on_sale_from_gmt": dateOnSaleFromGmt,
    "date_on_sale_to": dateOnSaleTo,
    "date_on_sale_to_gmt": dateOnSaleToGmt,
    "on_sale": onSale,
    "purchasable": purchasable,
    "total_sales": totalSales,
    "virtual": virtual,
    "downloadable": downloadable,
    "downloads": List<dynamic>.from(downloads.map((x) => x)),
    "download_limit": downloadLimit,
    "download_expiry": downloadExpiry,
    "external_url": externalUrl,
    "button_text": buttonText,
    "tax_status": taxStatusValues.reverse[taxStatus],
    "tax_class": taxClass,
    "manage_stock": manageStock,
    "stock_quantity": stockQuantity,
    "backorders": backordersValues.reverse[backorders],
    "backorders_allowed": backordersAllowed,
    "backordered": backordered,
    "sold_individually": soldIndividually,
    "weight": weight,
    "dimensions": dimensions.toJson(),
    "shipping_required": shippingRequired,
    "shipping_taxable": shippingTaxable,
    "shipping_class": shippingClass,
    "shipping_class_id": shippingClassId,
    "reviews_allowed": reviewsAllowed,
    "average_rating": averageRating,
    "rating_count": ratingCount,
    "upsell_ids": List<dynamic>.from(upsellIds.map((x) => x)),
    "cross_sell_ids": List<dynamic>.from(crossSellIds.map((x) => x)),
    "parent_id": parentId,
    "purchase_note": purchaseNote,
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "attributes": List<dynamic>.from(attributes.map((x) => x)),
    "default_attributes": List<dynamic>.from(defaultAttributes.map((x) => x)),
    "variations": List<dynamic>.from(variations.map((x) => x)),
    "grouped_products": List<dynamic>.from(groupedProducts.map((x) => x)),
    "menu_order": menuOrder,
    "price_html": priceHtml,
    "related_ids": List<dynamic>.from(relatedIds.map((x) => x)),
    "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
    "stock_status": stockStatusValues.reverse[stockStatus],
    "store": store.toJson(),
    "is_purchased": isPurchased,
    "attributesData": List<dynamic>.from(attributesData.map((x) => x)),
    "_links": links.toJson(),
  };
}

enum Backorders { NO }

final backordersValues = EnumValues({
  "no": Backorders.NO
});

enum CatalogVisibility { VISIBLE }

final catalogVisibilityValues = EnumValues({
  "visible": CatalogVisibility.VISIBLE
});

class Category {
  Category({
    this.id,
    this.name,
    this.slug,
  });

  int id;
  String name;
  String slug;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
  };
}

class Dimensions {
  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  String length;
  String width;
  String height;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    length: json["length"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "length": length,
    "width": width,
    "height": height,
  };
}

class Image {
  Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String src;
  String name;
  String alt;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    dateCreated: DateTime.parse(json["date_created"]),
    dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
    dateModified: DateTime.parse(json["date_modified"]),
    dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
    src: json["src"],
    name: json["name"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date_created": dateCreated.toIso8601String(),
    "date_created_gmt": dateCreatedGmt.toIso8601String(),
    "date_modified": dateModified.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt.toIso8601String(),
    "src": src,
    "name": name,
    "alt": alt,
  };
}

class Links {
  Links({
    this.self,
    this.collection,
  });

  List<Collection> self;
  List<Collection> collection;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
    collection: List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
  };
}

class Collection {
  Collection({
    this.href,
  });

  String href;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class MetaDatum {
  MetaDatum({
    this.id,
    this.key,
    this.value,
  });

  int id;
  String key;
  dynamic value;

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
    id: json["id"],
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "key": key,
    "value": value,
  };
}

class ValueElement {
  ValueElement({
    this.title,
    this.linkTxt,
    this.desc,
  });

  String title;
  String linkTxt;
  String desc;

  factory ValueElement.fromJson(Map<String, dynamic> json) => ValueElement(
    title: json["title"],
    linkTxt: json["link_txt"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "link_txt": linkTxt,
    "desc": desc,
  };
}

enum Status { PUBLISH }

final statusValues = EnumValues({
  "publish": Status.PUBLISH
});

enum StockStatus { INSTOCK }

final stockStatusValues = EnumValues({
  "instock": StockStatus.INSTOCK
});

class Store {
  Store({
    this.id,
    this.storeName,
    this.firstName,
    this.lastName,
    this.email,
    this.social,
    this.phone,
    this.showEmail,
    this.address,
    this.location,
    this.banner,
    this.bannerId,
    this.gravatar,
    this.gravatarId,
    this.shopUrl,
    this.productsPerPage,
    this.showMoreProductTab,
    this.tocEnabled,
    this.storeToc,
    this.featured,
    this.rating,
    this.enabled,
    this.registered,
    this.payment,
    this.trusted,
    this.storeOpenClose,
    this.switchUrl,
    this.adminCommission,
    this.adminAdditionalFee,
    this.adminCommissionType,
  });

  int id;
  StoreName storeName;
  FirstName firstName;
  LastName lastName;
  Email email;
  Social social;
  Phone phone;
  bool showEmail;
  Address address;
  String location;
  String banner;
  int bannerId;
  String gravatar;
  int gravatarId;
  String shopUrl;
  int productsPerPage;
  bool showMoreProductTab;
  bool tocEnabled;
  String storeToc;
  bool featured;
  RatingClass rating;
  bool enabled;
  DateTime registered;
  Payment payment;
  bool trusted;
  StoreOpenClose storeOpenClose;
  String switchUrl;
  String adminCommission;
  String adminAdditionalFee;
  AdminCommissionType adminCommissionType;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    id: json["id"],
    storeName: storeNameValues.map[json["store_name"]],
    firstName: firstNameValues.map[json["first_name"]],
    lastName: lastNameValues.map[json["last_name"]],
    email: emailValues.map[json["email"]],
    social: Social.fromJson(json["social"]),
    phone: phoneValues.map[json["phone"]],
    showEmail: json["show_email"],
    address: Address.fromJson(json["address"]),
    location: json["location"],
    banner: json["banner"],
    bannerId: json["banner_id"],
    gravatar: json["gravatar"],
    gravatarId: json["gravatar_id"],
    shopUrl: json["shop_url"],
    productsPerPage: json["products_per_page"],
    showMoreProductTab: json["show_more_product_tab"],
    tocEnabled: json["toc_enabled"],
    storeToc: json["store_toc"],
    featured: json["featured"],
    rating: RatingClass.fromJson(json["rating"]),
    enabled: json["enabled"],
    registered: DateTime.parse(json["registered"]),
    payment: Payment.fromJson(json["payment"]),
    trusted: json["trusted"],
    storeOpenClose: StoreOpenClose.fromJson(json["store_open_close"]),
    switchUrl: json["switch_url"],
    adminCommission: json["admin_commission"],
    adminAdditionalFee: json["admin_additional_fee"],
    adminCommissionType: adminCommissionTypeValues.map[json["admin_commission_type"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_name": storeNameValues.reverse[storeName],
    "first_name": firstNameValues.reverse[firstName],
    "last_name": lastNameValues.reverse[lastName],
    "email": emailValues.reverse[email],
    "social": social.toJson(),
    "phone": phoneValues.reverse[phone],
    "show_email": showEmail,
    "address": address.toJson(),
    "location": location,
    "banner": banner,
    "banner_id": bannerId,
    "gravatar": gravatar,
    "gravatar_id": gravatarId,
    "shop_url": shopUrl,
    "products_per_page": productsPerPage,
    "show_more_product_tab": showMoreProductTab,
    "toc_enabled": tocEnabled,
    "store_toc": storeToc,
    "featured": featured,
    "rating": rating.toJson(),
    "enabled": enabled,
    "registered": registered.toIso8601String(),
    "payment": payment.toJson(),
    "trusted": trusted,
    "store_open_close": storeOpenClose.toJson(),
    "switch_url": switchUrl,
    "admin_commission": adminCommission,
    "admin_additional_fee": adminAdditionalFee,
    "admin_commission_type": adminCommissionTypeValues.reverse[adminCommissionType],
  };
}

class Address {
  Address({
    this.street1,
    this.street2,
    this.city,
    this.zip,
    this.country,
    this.state,
  });

  String street1;
  String street2;
  String city;
  String zip;
  Country country;
  State state;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street1: json["street_1"],
    street2: json["street_2"],
    city: json["city"],
    zip: json["zip"],
    country: countryValues.map[json["country"]],
    state: stateValues.map[json["state"]],
  );

  Map<String, dynamic> toJson() => {
    "street_1": street1,
    "street_2": street2,
    "city": city,
    "zip": zip,
    "country": countryValues.reverse[country],
    "state": stateValues.reverse[state],
  };
}

enum Country { EMPTY, AE }

final countryValues = EnumValues({
  "AE": Country.AE,
  "": Country.EMPTY
});

enum State { EMPTY, DUBAI }

final stateValues = EnumValues({
  "Dubai": State.DUBAI,
  "": State.EMPTY
});

enum AdminCommissionType { FLAT }

final adminCommissionTypeValues = EnumValues({
  "flat": AdminCommissionType.FLAT
});

enum Email { PALAZZOJEWELLERY_GMAIL_COM, SALEMALSHUEIBIJ_GMAIL_COM }

final emailValues = EnumValues({
  "palazzojewellery@gmail.com": Email.PALAZZOJEWELLERY_GMAIL_COM,
  "salemalshueibij@gmail.com": Email.SALEMALSHUEIBIJ_GMAIL_COM
});

enum FirstName { EMPTY, SALEM }

final firstNameValues = EnumValues({
  "": FirstName.EMPTY,
  "SALEM": FirstName.SALEM
});

enum LastName { EMPTY, ALSHUEIBI }

final lastNameValues = EnumValues({
  "ALSHUEIBI": LastName.ALSHUEIBI,
  "": LastName.EMPTY
});

class Payment {
  Payment({
    this.paypal,
    this.bank,
    this.stripe,
  });

  List<Paypal> paypal;
  List<dynamic> bank;
  bool stripe;

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
    paypal: List<Paypal>.from(json["paypal"].map((x) => paypalValues.map[x])),
    bank: List<dynamic>.from(json["bank"].map((x) => x)),
    stripe: json["stripe"],
  );

  Map<String, dynamic> toJson() => {
    "paypal": List<dynamic>.from(paypal.map((x) => paypalValues.reverse[x])),
    "bank": List<dynamic>.from(bank.map((x) => x)),
    "stripe": stripe,
  };
}

enum Paypal { EMAIL }

final paypalValues = EnumValues({
  "email": Paypal.EMAIL
});

enum Phone { EMPTY, THE_0557778167 }

final phoneValues = EnumValues({
  "": Phone.EMPTY,
  "0557778167": Phone.THE_0557778167
});

class RatingClass {
  RatingClass({
    this.rating,
    this.count,
  });

  RatingEnum rating;
  int count;

  factory RatingClass.fromJson(Map<String, dynamic> json) => RatingClass(
    rating: ratingEnumValues.map[json["rating"]],
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rating": ratingEnumValues.reverse[rating],
    "count": count,
  };
}

enum RatingEnum { NO_RATINGS_FOUND_YET }

final ratingEnumValues = EnumValues({
  "No Ratings found yet": RatingEnum.NO_RATINGS_FOUND_YET
});

class Social {
  Social({
    this.fb,
    this.gplus,
    this.twitter,
    this.pinterest,
    this.linkedin,
    this.youtube,
    this.instagram,
    this.flickr,
  });

  String fb;
  String gplus;
  String twitter;
  String pinterest;
  String linkedin;
  String youtube;
  String instagram;
  String flickr;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    fb: json["fb"],
    gplus: json["gplus"],
    twitter: json["twitter"],
    pinterest: json["pinterest"],
    linkedin: json["linkedin"],
    youtube: json["youtube"],
    instagram: json["instagram"],
    flickr: json["flickr"],
  );

  Map<String, dynamic> toJson() => {
    "fb": fb,
    "gplus": gplus,
    "twitter": twitter,
    "pinterest": pinterest,
    "linkedin": linkedin,
    "youtube": youtube,
    "instagram": instagram,
    "flickr": flickr,
  };
}

enum StoreName { EMPTY, SALEM_ALSHUEIBI_JEWELLERY }

final storeNameValues = EnumValues({
  "": StoreName.EMPTY,
  "SALEM ALSHUEIBI JEWELLERY": StoreName.SALEM_ALSHUEIBI_JEWELLERY
});

class StoreOpenClose {
  StoreOpenClose({
    this.enabled,
    this.time,
    this.openNotice,
    this.closeNotice,
  });

  bool enabled;
  List<dynamic> time;
  OpenNotice openNotice;
  CloseNotice closeNotice;

  factory StoreOpenClose.fromJson(Map<String, dynamic> json) => StoreOpenClose(
    enabled: json["enabled"],
    time: List<dynamic>.from(json["time"].map((x) => x)),
    openNotice: openNoticeValues.map[json["open_notice"]],
    closeNotice: closeNoticeValues.map[json["close_notice"]],
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
    "time": List<dynamic>.from(time.map((x) => x)),
    "open_notice": openNoticeValues.reverse[openNotice],
    "close_notice": closeNoticeValues.reverse[closeNotice],
  };
}

enum CloseNotice { STORE_IS_CLOSED }

final closeNoticeValues = EnumValues({
  "Store is closed": CloseNotice.STORE_IS_CLOSED
});

enum OpenNotice { STORE_IS_OPEN }

final openNoticeValues = EnumValues({
  "Store is open": OpenNotice.STORE_IS_OPEN
});

enum TaxStatus { TAXABLE }

final taxStatusValues = EnumValues({
  "taxable": TaxStatus.TAXABLE
});

enum Type { SIMPLE }

final typeValues = EnumValues({
  "simple": Type.SIMPLE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
