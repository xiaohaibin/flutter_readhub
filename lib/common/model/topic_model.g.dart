// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicModel _$TopicModelFromJson(Map<String, dynamic> json) {
  return new TopicModel(
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : new Data.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['pageSize'] as int,
      json['totalItems'] as int,
      json['totalPages'] as int);
}

abstract class _$TopicModelSerializerMixin {
  List<Data> get data;
  int get pageSize;
  int get totalItems;
  int get totalPages;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'pageSize': pageSize,
        'totalItems': totalItems,
        'totalPages': totalPages
      };
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return new Data(
      json['id'] as String,
      json['nelData'] == null
          ? null
          : new NelData.fromJson(json['nelData'] as Map<String, dynamic>),
      (json['newsArray'] as List)
          ?.map((e) => e == null
              ? null
              : new NewsArray.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['createdAt'] as String,
      json['eventData'] as List,
      json['publishDate'] as String,
      json['summary'] as String,
      json['title'] as String,
      json['updatedAt'] as String,
      json['timeline'] as String,
      json['order'] as int,
      json['extra'] == null
          ? null
          : new Extra.fromJson(json['extra'] as Map<String, dynamic>));
}

abstract class _$DataSerializerMixin {
  String get id;
  NelData get nelData;
  List<NewsArray> get newsArray;
  String get createdAt;
  List<dynamic> get eventData;
  String get publishDate;
  String get summary;
  String get title;
  String get updatedAt;
  String get timeline;
  int get order;
  Extra get extra;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'nelData': nelData,
        'newsArray': newsArray,
        'createdAt': createdAt,
        'eventData': eventData,
        'publishDate': publishDate,
        'summary': summary,
        'title': title,
        'updatedAt': updatedAt,
        'timeline': timeline,
        'order': order,
        'extra': extra
      };
}

NelData _$NelDataFromJson(Map<String, dynamic> json) {
  return new NelData(
      json['state'] as bool,
      (json['result'] as List)
          ?.map((e) =>
              e == null ? null : new Result.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$NelDataSerializerMixin {
  bool get state;
  List<Result> get result;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'state': state, 'result': result};
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return new Result(
//      json['weight'] as int,
      json['nerName'] as String,
      json['entityId'] as String,
      json['entityName'] as String,
      json['entityType'] as String,
      json['entityUniqueId'] as String,
      json['finance'] == null
          ? null
          : new Finance.fromJson(json['finance'] as Map<String, dynamic>));
}

abstract class _$ResultSerializerMixin {
//  int get weight;
  String get nerName;
  String get entityId;
  String get entityName;
  String get entityType;
  String get entityUniqueId;
  Finance get finance;
  Map<String, dynamic> toJson() => <String, dynamic>{
//        'weight': weight,
        'nerName': nerName,
        'entityId': entityId,
        'entityName': entityName,
        'entityType': entityType,
        'entityUniqueId': entityUniqueId,
        'finance': finance
      };
}

Finance _$FinanceFromJson(Map<String, dynamic> json) {
  return new Finance(json['code'] as String, json['name'] as String);
}

abstract class _$FinanceSerializerMixin {
  String get code;
  String get name;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'code': code, 'name': name};
}

NewsArray _$NewsArrayFromJson(Map<String, dynamic> json) {
  return new NewsArray(
      json['id'] as int,
      json['url'] as String,
      json['title'] as String,
      json['siteName'] as String,
      json['mobileUrl'] as String,
      json['autherName'] as String,
      json['duplicateId'] as int,
      json['publishDate'] as String,
      json['language'] as String,
      json['statementType'] as int);
}

abstract class _$NewsArraySerializerMixin {
  int get id;
  String get url;
  String get title;
  String get siteName;
  String get mobileUrl;
  String get autherName;
  int get duplicateId;
  String get publishDate;
  String get language;
  int get statementType;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'url': url,
        'title': title,
        'siteName': siteName,
        'mobileUrl': mobileUrl,
        'autherName': autherName,
        'duplicateId': duplicateId,
        'publishDate': publishDate,
        'language': language,
        'statementType': statementType
      };
}

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return new Extra(json['instantView'] as bool);
}

abstract class _$ExtraSerializerMixin {
  bool get instantView;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'instantView': instantView};
}
