import 'dart:convert';

List<Productes> productsFromJson(String str) => List<Productes>.from(json.decode(str).map((x) => Productes.fromJson(x)));

String productesToJson(List<Productes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Productes {
  int storeListingId;
  int isSessionAvailable;
  CurrencyCode currencyCode;
  String currencyArabic;
  int rounding;
  StoreName storeName;
  int uiDesignId;
  StoreUrlName storeUrlName;
  int productId;
  String productName;
  String? productArabicName;
  int hasService;
  int productOutOfStock;
  int? hasReview;
  int storeId;
  int prodTypeId;
  int unitId;
  String? unitName;
  String productPrice;
  dynamic offerPrice;
  dynamic offerPricePercentage;
  int offerSettings;
  int maxOfferQty;
  int offerToDate;
  String offerTypeName;
  String offerType;
  int? itemsPerPack;
  int? retailProductPrice;
  int? wholesaleProductPrice;
  int wholesaleOfferPrice;
  int retailOfferPrice;
  int? prodPurchaseLimit;
  int? isOutOfStock;
  int prodMenuOrder;
  int? reorderQty;
  int? productQty;
  int? maintainStock;
  int isVariant;
  List<Variant> variants;
  int offerFlag;
  int stockIntervalId;
  List<Service> services;
  bool addToCart;
  bool wishlisted;
  int isHidden;
  String productSlug;
  int quantity;
  int defaultQuantity;
  int storeListing;
  int acceptOrders;
  int businessClosed;
  int rowcount;
  int varRowCount;
  int prodCartQty;
  int productAvgRating;
  String productRoundedAvgRating;
  String productTotalRating;
  List<ProductRatingSummary> productRatingSummary;
  List<dynamic> wCartServices;
  List<Image> images;
  int isBestSeller;
  int wishlistId;
  int? isPreOrder;

  Productes({
    required this.storeListingId,
    required this.isSessionAvailable,
    required this.currencyCode,
    required this.currencyArabic,
    required this.rounding,
    required this.storeName,
    required this.uiDesignId,
    required this.storeUrlName,
    required this.productId,
    required this.productName,
    required this.productArabicName,
    required this.hasService,
    required this.productOutOfStock,
    required this.hasReview,
    required this.storeId,
    required this.prodTypeId,
    required this.unitId,
    required this.unitName,
    required this.productPrice,
    required this.offerPrice,
    required this.offerPricePercentage,
    required this.offerSettings,
    required this.maxOfferQty,
    required this.offerToDate,
    required this.offerTypeName,
    required this.offerType,
    required this.itemsPerPack,
    required this.retailProductPrice,
    required this.wholesaleProductPrice,
    required this.wholesaleOfferPrice,
    required this.retailOfferPrice,
    required this.prodPurchaseLimit,
    required this.isOutOfStock,
    required this.prodMenuOrder,
    required this.reorderQty,
    required this.productQty,
    required this.maintainStock,
    required this.isVariant,
    required this.variants,
    required this.offerFlag,
    required this.stockIntervalId,
    required this.services,
    required this.addToCart,
    required this.wishlisted,
    required this.isHidden,
    required this.productSlug,
    required this.quantity,
    required this.defaultQuantity,
    required this.storeListing,
    required this.acceptOrders,
    required this.businessClosed,
    required this.rowcount,
    required this.varRowCount,
    required this.prodCartQty,
    required this.productAvgRating,
    required this.productRoundedAvgRating,
    required this.productTotalRating,
    required this.productRatingSummary,
    required this.wCartServices,
    required this.images,
    required this.isBestSeller,
    required this.wishlistId,
    required this.isPreOrder,
  });

  factory Productes.fromJson(Map<String, dynamic> json) => Productes(
    storeListingId: json["store_listing_id"],
    isSessionAvailable: json["is_session_available"],
    currencyCode: currencyCodeValues.map[json["currency_code"]]!,
    currencyArabic: json["currency_arabic"],
    rounding: json["rounding"],
    storeName: storeNameValues.map[json["store_name"]]!,
    uiDesignId: json["ui_design_id"],
    storeUrlName: storeUrlNameValues.map[json["store_url_name"]]!,
    productId: json["product_id"],
    productName: json["product_name"],
    productArabicName: json["product_arabic_name"],
    hasService: json["has_service"],
    productOutOfStock: json["product_out_of_stock"],
    hasReview: json["has_review"],
    storeId: json["store_id"],
    prodTypeId: json["prod_type_id"],
    unitId: json["unit_id"],
    unitName: json["unit_name"],
    productPrice: json["product_price"],
    offerPrice: json["offer_price"],
    offerPricePercentage: json["offer_price_percentage"],
    offerSettings: json["offer_settings"],
    maxOfferQty: json["max_offer_qty"],
    offerToDate: json["offer_to_date"],
    offerTypeName: json["offer_type_name"],
    offerType: json["offer_type"],
    itemsPerPack: json["items_per_pack"],
    retailProductPrice: json["retail_product_price"],
    wholesaleProductPrice: json["wholesale_product_price"],
    wholesaleOfferPrice: json["wholesale_offer_price"],
    retailOfferPrice: json["retail_offer_price"],
    prodPurchaseLimit: json["prod_purchase_limit"],
    isOutOfStock: json["is_out_of_stock"],
    prodMenuOrder: json["prod_menu_order"],
    reorderQty: json["reorder_qty"],
    productQty: json["product_qty"],
    maintainStock: json["maintain_stock"],
    isVariant: json["is_variant"],
    variants: List<Variant>.from(json["variants"].map((x) => Variant.fromJson(x))),
    offerFlag: json["offer_flag"],
    stockIntervalId: json["stock_interval_id"],
    services: List<Service>.from(json["services"].map((x) => Service.fromJson(x))),
    addToCart: json["add_to_cart"],
    wishlisted: json["wishlisted"],
    isHidden: json["is_hidden"],
    productSlug: json["product_slug"],
    quantity: json["quantity"],
    defaultQuantity: json["default_quantity"],
    storeListing: json["store_listing"],
    acceptOrders: json["accept_orders"],
    businessClosed: json["business_closed"],
    rowcount: json["rowcount"],
    varRowCount: json["var_row_count"],
    prodCartQty: json["prod_cart_qty"],
    productAvgRating: json["product_avg_rating"],
    productRoundedAvgRating: json["product_rounded_avg_rating"],
    productTotalRating: json["Product_Total_Rating"],
    productRatingSummary: List<ProductRatingSummary>.from(json["product_rating_summary"].map((x) => ProductRatingSummary.fromJson(x))),
    wCartServices: List<dynamic>.from(json["w_cart_services"].map((x) => x)),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    isBestSeller: json["is_best_seller"],
    wishlistId: json["wishlist_id"],
    isPreOrder: json["is_pre_order"],
  );

  Map<String, dynamic> toJson() => {
    "store_listing_id": storeListingId,
    "is_session_available": isSessionAvailable,
    "currency_code": currencyCodeValues.reverse[currencyCode],
    "currency_arabic": currencyArabic,
    "rounding": rounding,
    "store_name": storeNameValues.reverse[storeName],
    "ui_design_id": uiDesignId,
    "store_url_name": storeUrlNameValues.reverse[storeUrlName],
    "product_id": productId,
    "product_name": productName,
    "product_arabic_name": productArabicName,
    "has_service": hasService,
    "product_out_of_stock": productOutOfStock,
    "has_review": hasReview,
    "store_id": storeId,
    "prod_type_id": prodTypeId,
    "unit_id": unitId,
    "unit_name": unitName,
    "product_price": productPrice,
    "offer_price": offerPrice,
    "offer_price_percentage": offerPricePercentage,
    "offer_settings": offerSettings,
    "max_offer_qty": maxOfferQty,
    "offer_to_date": offerToDate,
    "offer_type_name": offerTypeName,
    "offer_type": offerType,
    "items_per_pack": itemsPerPack,
    "retail_product_price": retailProductPrice,
    "wholesale_product_price": wholesaleProductPrice,
    "wholesale_offer_price": wholesaleOfferPrice,
    "retail_offer_price": retailOfferPrice,
    "prod_purchase_limit": prodPurchaseLimit,
    "is_out_of_stock": isOutOfStock,
    "prod_menu_order": prodMenuOrder,
    "reorder_qty": reorderQty,
    "product_qty": productQty,
    "maintain_stock": maintainStock,
    "is_variant": isVariant,
    "variants": List<dynamic>.from(variants.map((x) => x.toJson())),
    "offer_flag": offerFlag,
    "stock_interval_id": stockIntervalId,
    "services": List<dynamic>.from(services.map((x) => x.toJson())),
    "add_to_cart": addToCart,
    "wishlisted": wishlisted,
    "is_hidden": isHidden,
    "product_slug": productSlug,
    "quantity": quantity,
    "default_quantity": defaultQuantity,
    "store_listing": storeListing,
    "accept_orders": acceptOrders,
    "business_closed": businessClosed,
    "rowcount": rowcount,
    "var_row_count": varRowCount,
    "prod_cart_qty": prodCartQty,
    "product_avg_rating": productAvgRating,
    "product_rounded_avg_rating": productRoundedAvgRating,
    "Product_Total_Rating": productTotalRating,
    "product_rating_summary": List<dynamic>.from(productRatingSummary.map((x) => x.toJson())),
    "w_cart_services": List<dynamic>.from(wCartServices.map((x) => x)),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "is_best_seller": isBestSeller,
    "wishlist_id": wishlistId,
    "is_pre_order": isPreOrder,
  };
}

enum CurrencyCode {
  QR
}

final currencyCodeValues = EnumValues({
  "QR": CurrencyCode.QR
});

class Image {
  int productImgId;
  int resourceId;
  int prodVarId;
  String large;
  String medium;
  String small;

  Image({
    required this.productImgId,
    required this.resourceId,
    required this.prodVarId,
    required this.large,
    required this.medium,
    required this.small,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    productImgId: json["product_img_id"],
    resourceId: json["resource_id"],
    prodVarId: json["prod_var_id"],
    large: json["Large"],
    medium: json["Medium"],
    small: json["Small"],
  );

  Map<String, dynamic> toJson() => {
    "product_img_id": productImgId,
    "resource_id": resourceId,
    "prod_var_id": prodVarId,
    "Large": large,
    "Medium": medium,
    "Small": small,
  };
}

class ProductRatingSummary {
  int ratig;
  int totalRating;

  ProductRatingSummary({
    required this.ratig,
    required this.totalRating,
  });

  factory ProductRatingSummary.fromJson(Map<String, dynamic> json) => ProductRatingSummary(
    ratig: json["Ratig"],
    totalRating: json["Total_Rating"],
  );

  Map<String, dynamic> toJson() => {
    "Ratig": ratig,
    "Total_Rating": totalRating,
  };
}

class Service {
  int serviceId;
  String serviceName;
  dynamic serviceArabicName;
  int defaultPrice;
  int productId;
  int prodServiceId;
  int isFree;
  int servicePrice;
  int isActive;
  String prodVarCode;

  Service({
    required this.serviceId,
    required this.serviceName,
    required this.serviceArabicName,
    required this.defaultPrice,
    required this.productId,
    required this.prodServiceId,
    required this.isFree,
    required this.servicePrice,
    required this.isActive,
    required this.prodVarCode,
  });

  factory Service.fromJson(Map<String, dynamic> json) => Service(
    serviceId: json["service_id"],
    serviceName: json["service_name"],
    serviceArabicName: json["service_arabic_name"],
    defaultPrice: json["default_price"],
    productId: json["product_id"],
    prodServiceId: json["prod_service_id"],
    isFree: json["is_free"],
    servicePrice: json["service_price"],
    isActive: json["is_active"],
    prodVarCode: json["prod_var_code"],
  );

  Map<String, dynamic> toJson() => {
    "service_id": serviceId,
    "service_name": serviceName,
    "service_arabic_name": serviceArabicName,
    "default_price": defaultPrice,
    "product_id": productId,
    "prod_service_id": prodServiceId,
    "is_free": isFree,
    "service_price": servicePrice,
    "is_active": isActive,
    "prod_var_code": prodVarCode,
  };
}

enum StoreName {
  MODERN_ASIAN_RESTAURANT
}

final storeNameValues = EnumValues({
  "Modern Asian Restaurant": StoreName.MODERN_ASIAN_RESTAURANT
});

enum StoreUrlName {
  MODERN_ASIAN_RESTAURANT
}

final storeUrlNameValues = EnumValues({
  "modern-asian-restaurant": StoreUrlName.MODERN_ASIAN_RESTAURANT
});

class Variant {
  String prodVarCode;
  String productVariantName;
  int productId;
  int prodVarId;
  int varStockQty;
  String varPrice;
  String varOfferPrice;
  int varOfferPercentage;
  int varMaxOfferQty;
  int varOfferDate;
  String varOfferTypeName;
  String varOfferType;
  String prodVarName;
  String varArabicName;
  String atrValueId;
  int? retailProductPrice;
  int? wholesaleProductPrice;
  int? isTaxable;
  int? isTaxInclusive;
  int? varTaxAmt;
  int? varTaxPercentage;
  int varPurchaseLimit;
  List<dynamic> variantImages;
  int variantOutOfStock;
  int variantOffer;
  int retailOfferPrice;
  int wholesaleOfferPrice;

  Variant({
    required this.prodVarCode,
    required this.productVariantName,
    required this.productId,
    required this.prodVarId,
    required this.varStockQty,
    required this.varPrice,
    required this.varOfferPrice,
    required this.varOfferPercentage,
    required this.varMaxOfferQty,
    required this.varOfferDate,
    required this.varOfferTypeName,
    required this.varOfferType,
    required this.prodVarName,
    required this.varArabicName,
    required this.atrValueId,
    required this.retailProductPrice,
    required this.wholesaleProductPrice,
    required this.isTaxable,
    required this.isTaxInclusive,
    required this.varTaxAmt,
    required this.varTaxPercentage,
    required this.varPurchaseLimit,
    required this.variantImages,
    required this.variantOutOfStock,
    required this.variantOffer,
    required this.retailOfferPrice,
    required this.wholesaleOfferPrice,
  });

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
    prodVarCode: json["prod_var_code"],
    productVariantName: json["product_variant_name"],
    productId: json["product_id"],
    prodVarId: json["prod_var_id"],
    varStockQty: json["var_stock_qty"],
    varPrice: json["var_price"],
    varOfferPrice: json["var_offerPrice"],
    varOfferPercentage: json["var_offerPercentage"],
    varMaxOfferQty: json["var_max_offer_qty"],
    varOfferDate: json["var_offerDate"],
    varOfferTypeName: json["var_offer_type_name"],
    varOfferType: json["var_offer_type"],
    prodVarName: json["prod_var_name"],
    varArabicName: json["var_arabic_name"],
    atrValueId: json["atr_value_id"],
    retailProductPrice: json["retail_product_price"],
    wholesaleProductPrice: json["wholesale_product_price"],
    isTaxable: json["is_taxable"],
    isTaxInclusive: json["is_tax_inclusive"],
    varTaxAmt: json["var_tax_amt"],
    varTaxPercentage: json["var_tax_percentage"],
    varPurchaseLimit: json["var_purchase_limit"],
    variantImages: List<dynamic>.from(json["variant_images"].map((x) => x)),
    variantOutOfStock: json["variant_out_of_stock"],
    variantOffer: json["variant_offer"],
    retailOfferPrice: json["retail_offer_price"],
    wholesaleOfferPrice: json["wholesale_offer_price"],
  );

  Map<String, dynamic> toJson() => {
    "prod_var_code": prodVarCode,
    "product_variant_name": productVariantName,
    "product_id": productId,
    "prod_var_id": prodVarId,
    "var_stock_qty": varStockQty,
    "var_price": varPrice,
    "var_offerPrice": varOfferPrice,
    "var_offerPercentage": varOfferPercentage,
    "var_max_offer_qty": varMaxOfferQty,
    "var_offerDate": varOfferDate,
    "var_offer_type_name": varOfferTypeName,
    "var_offer_type": varOfferType,
    "prod_var_name": prodVarName,
    "var_arabic_name": varArabicName,
    "atr_value_id": atrValueId,
    "retail_product_price": retailProductPrice,
    "wholesale_product_price": wholesaleProductPrice,
    "is_taxable": isTaxable,
    "is_tax_inclusive": isTaxInclusive,
    "var_tax_amt": varTaxAmt,
    "var_tax_percentage": varTaxPercentage,
    "var_purchase_limit": varPurchaseLimit,
    "variant_images": List<dynamic>.from(variantImages.map((x) => x)),
    "variant_out_of_stock": variantOutOfStock,
    "variant_offer": variantOffer,
    "retail_offer_price": retailOfferPrice,
    "wholesale_offer_price": wholesaleOfferPrice,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
