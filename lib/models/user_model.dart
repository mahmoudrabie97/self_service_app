class UserModel {
  String? jsonrpc;
  dynamic id;
  Result? result;

  UserModel({this.jsonrpc, this.id, this.result});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      jsonrpc: json['jsonrpc'],
      id: json['id'],
      result: json['result'] != null ? Result.fromJson(json['result']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jsonrpc'] = jsonrpc;
    data['id'] = id;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  int? uid;
  bool? isSystem;
  bool? isAdmin;
  UserContext? userContext;
  String? db;
  String? serverVersion;
  List<int>? serverVersionInfo;
  String? supportUrl;
  String? name;
  String? username;
  String? partnerDisplayName;
  int? companyId;
  int? partnerId;
  String? webBaseUrl;
  int? activeIdsLimit;
  dynamic profileSession;
  dynamic profileCollectors;
  dynamic profileParams;
  int? maxFileUploadSize;
  bool? homeActionId;
  CacheHashes? cacheHashes;
  Currencies? currencies;
  UserCompanies? userCompanies;
  String? showEffect;
  bool? displaySwitchCompanyMenu;
  List<int>? userId;
  int? maxTimeBetweenKeysInMs;
  int? companyCurrencyId;
  CompaniesCurrencyId? companiesCurrencyId;
  String? warning;
  bool? expirationDate;
  bool? expirationReason;
  List<dynamic>? webTours;
  bool? tourDisable;
  String? notificationType;
  bool? mapBoxToken;
  bool? odoobotInitialized;
  bool? iapCompanyEnrich;
  UomIds? uomIds;

  Result({
    this.uid,
    this.isSystem,
    this.isAdmin,
    this.userContext,
    this.db,
    this.serverVersion,
    this.serverVersionInfo,
    this.supportUrl,
    this.name,
    this.username,
    this.partnerDisplayName,
    this.companyId,
    this.partnerId,
    this.webBaseUrl,
    this.activeIdsLimit,
    this.profileSession,
    this.profileCollectors,
    this.profileParams,
    this.maxFileUploadSize,
    this.homeActionId,
    this.cacheHashes,
    this.currencies,
    this.userCompanies,
    this.showEffect,
    this.displaySwitchCompanyMenu,
    this.userId,
    this.maxTimeBetweenKeysInMs,
    this.companyCurrencyId,
    this.companiesCurrencyId,
    this.warning,
    this.expirationDate,
    this.expirationReason,
    this.webTours,
    this.tourDisable,
    this.notificationType,
    this.mapBoxToken,
    this.odoobotInitialized,
    this.iapCompanyEnrich,
    this.uomIds,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      uid: json['uid'],
      isSystem: json['is_system'],
      isAdmin: json['is_admin'],
      userContext: json['user_context'] != null
          ? UserContext.fromJson(json['user_context'])
          : null,
      db: json['db'],
      serverVersion: json['server_version'],
      serverVersionInfo: json['server_version_info'].cast<int>(),
      supportUrl: json['support_url'],
      name: json['name'],
      username: json['username'],
      partnerDisplayName: json['partner_display_name'],
      companyId: json['company_id'],
      partnerId: json['partner_id'],
      webBaseUrl: json['web.base.url'],
      activeIdsLimit: json['active_ids_limit'],
      profileSession: json['profile_session'],
      profileCollectors: json['profile_collectors'],
      profileParams: json['profile_params'],
      maxFileUploadSize: json['max_file_upload_size'],
      homeActionId: json['home_action_id'],
      cacheHashes: json['cache_hashes'] != null
          ? CacheHashes.fromJson(json['cache_hashes'])
          : null,
      currencies: json['currencies'] != null
          ? Currencies.fromJson(json['currencies'])
          : null,
      userCompanies: json['user_companies'] != null
          ? UserCompanies.fromJson(json['user_companies'])
          : null,
      showEffect: json['show_effect'],
      displaySwitchCompanyMenu: json['display_switch_company_menu'],
      userId: json['user_id'].cast<int>(),
      maxTimeBetweenKeysInMs: json['max_time_between_keys_in_ms'],
      companyCurrencyId: json['company_currency_id'],
      companiesCurrencyId: json['companies_currency_id'] != null
          ? CompaniesCurrencyId.fromJson(json['companies_currency_id'])
          : null,
      warning: json['warning'],
      expirationDate: json['expiration_date'],
      expirationReason: json['expiration_reason'],
      webTours: json['web_tours'],
      tourDisable: json['tour_disable'],
      notificationType: json['notification_type'],
      mapBoxToken: json['map_box_token'],
      odoobotInitialized: json['odoobot_initialized'],
      iapCompanyEnrich: json['iap_company_enrich'],
      uomIds: json['uom_ids'] != null ? UomIds.fromJson(json['uom_ids']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = uid;
    data['is_system'] = isSystem;
    data['is_admin'] = isAdmin;
    if (userContext != null) {
      data['user_context'] = userContext!.toJson();
    }
    data['db'] = db;
    data['server_version'] = serverVersion;
    data['server_version_info'] = serverVersionInfo;
    data['support_url'] = supportUrl;
    data['name'] = name;
    data['username'] = username;
    data['partner_display_name'] = partnerDisplayName;
    data['company_id'] = companyId;
    data['partner_id'] = partnerId;
    data['web.base.url'] = webBaseUrl;
    data['active_ids_limit'] = activeIdsLimit;
    data['profile_session'] = profileSession;
    data['profile_collectors'] = profileCollectors;
    data['profile_params'] = profileParams;
    data['max_file_upload_size'] = maxFileUploadSize;
    data['home_action_id'] = homeActionId;
    if (cacheHashes != null) {
      data['cache_hashes'] = cacheHashes!.toJson();
    }
    if (currencies != null) {
      data['currencies'] = currencies!.toJson();
    }
    if (userCompanies != null) {
      data['user_companies'] = userCompanies!.toJson();
    }
    data['show_effect'] = showEffect;
    data['display_switch_company_menu'] = displaySwitchCompanyMenu;
    data['user_id'] = userId;
    data['max_time_between_keys_in_ms'] = maxTimeBetweenKeysInMs;
    data['company_currency_id'] = companyCurrencyId;
    if (companiesCurrencyId != null) {
      data['companies_currency_id'] = companiesCurrencyId!.toJson();
    }
    data['warning'] = warning;
    data['expiration_date'] = expirationDate;
    data['expiration_reason'] = expirationReason;
    data['web_tours'] = webTours;
    data['tour_disable'] = tourDisable;
    data['notification_type'] = notificationType;
    data['map_box_token'] = mapBoxToken;
    data['odoobot_initialized'] = odoobotInitialized;
    data['iap_company_enrich'] = iapCompanyEnrich;
    if (uomIds != null) {
      data['uom_ids'] = uomIds!.toJson();
    }
    return data;
  }
}

// تعريفات الكلاسات الأخرى مثل UserContext, CacheHashes, Currencies, UserCompanies, CompaniesCurrencyId, UomIds يجب أن تكون مشابهة للتعريفات أعلاه.
class UserContext {
  String? lang;
  String? tz;
  int? uid;

  UserContext({this.lang, this.tz, this.uid});

  factory UserContext.fromJson(Map<String, dynamic> json) => UserContext(
        lang: json['lang'],
        tz: json['tz'],
        uid: json['uid'],
      );

  Map<String, dynamic> toJson() => {
        'lang': lang,
        'tz': tz,
        'uid': uid,
      };
}

class CacheHashes {
  String? loadMenus;
  String? qweb;
  String? translator;

  CacheHashes({this.loadMenus, this.qweb, this.translator});

  factory CacheHashes.fromJson(Map<String, dynamic> json) => CacheHashes(
        loadMenus: json['load_menus'],
        qweb: json['qweb'],
        translator: json['translator'],
      );

  Map<String, dynamic> toJson() => {
        'load_menus': loadMenus,
        'qweb': qweb,
        'translator': translator,
      };
}

class Currencies {
  int? id;
  String? symbol;
  String? position;
  bool? isMultiCurrency;

  Currencies({this.id, this.symbol, this.position, this.isMultiCurrency});

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        id: json['id'],
        symbol: json['symbol'],
        position: json['position'],
        isMultiCurrency: json['is_multi_currency'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'symbol': symbol,
        'position': position,
        'is_multi_currency': isMultiCurrency,
      };
}

class UserCompanies {
  bool? allowedCompanies;
  int? currentCompany;

  UserCompanies({this.allowedCompanies, this.currentCompany});

  factory UserCompanies.fromJson(Map<String, dynamic> json) => UserCompanies(
        allowedCompanies: json['allowed_companies'],
        currentCompany: json['current_company'],
      );

  Map<String, dynamic> toJson() => {
        'allowed_companies': allowedCompanies,
        'current_company': currentCompany,
      };
}

class CompaniesCurrencyId {
  int? id;
  String? name;

  CompaniesCurrencyId({this.id, this.name});

  factory CompaniesCurrencyId.fromJson(Map<String, dynamic> json) =>
      CompaniesCurrencyId(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class UomIds {
  int? id;
  String? name;
  String? category;

  UomIds({this.id, this.name, this.category});

  factory UomIds.fromJson(Map<String, dynamic> json) => UomIds(
        id: json['id'],
        name: json['name'],
        category: json['category'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'category': category,
      };
}
