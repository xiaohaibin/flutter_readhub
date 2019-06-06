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
      (json['newsArray'] as List)
          ?.map((e) => e == null
              ? null
              : new NewsArray.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['createdAt'] as String,
      (json['eventData'] as List)
          ?.map((e) => e == null
              ? null
              : new EventData.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['publishDate'] as String,
      json['summary'] as String,
      json['title'] as String,
      json['updatedAt'] as String,
      json['timeline'] as String,
      json['order'] as int,
      json['hasInstantView'] as bool,
      json['extra'] == null
          ? null
          : new Extra.fromJson(json['extra'] as Map<String, dynamic>));
}

abstract class _$DataSerializerMixin {
  String get id;
  List<NewsArray> get newsArray;
  String get createdAt;
  List<EventData> get eventData;
  String get publishDate;
  String get summary;
  String get title;
  String get updatedAt;
  String get timeline;
  int get order;
  bool get hasInstantView;
  Extra get extra;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'newsArray': newsArray,
        'createdAt': createdAt,
        'eventData': eventData,
        'publishDate': publishDate,
        'summary': summary,
        'title': title,
        'updatedAt': updatedAt,
        'timeline': timeline,
        'order': order,
        'hasInstantView': hasInstantView,
        'extra': extra
      };
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

EventData _$EventDataFromJson(Map<String, dynamic> json) {
  return new EventData(
      json['id'] as int,
      json['topicId'] as String,
      json['eventType'] as int,
      json['entityId'] as String,
      json['entityType'] as String,
      json['entityName'] as String,
      json['state'] as int,
      json['createdAt'] as String,
      json['updatedAt'] as String);
}

abstract class _$EventDataSerializerMixin {
  int get id;
  String get topicId;
  int get eventType;
  String get entityId;
  String get entityType;
  String get entityName;
  int get state;
  String get createdAt;
  String get updatedAt;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'topicId': topicId,
        'eventType': eventType,
        'entityId': entityId,
        'entityType': entityType,
        'entityName': entityName,
        'state': state,
        'createdAt': createdAt,
        'updatedAt': updatedAt
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
