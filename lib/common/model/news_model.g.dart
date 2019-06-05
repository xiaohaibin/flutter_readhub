// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return new NewsModel(
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : new Data.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['pageSize'] as int,
      json['totalItems'] as int,
      json['totalPages'] as int);
}

abstract class _$NewsModelSerializerMixin {
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
      json['summary'] as String,
      json['id'] as int,
      json['title'] as String,
      json['summaryAuto'] as String,
      json['url'] as String,
      json['mobileUrl'] as String,
      json['siteName'] as String,
      json['language'] as String,
      json['authorName'] as String,
      json['publishDate'] as String);
}

abstract class _$DataSerializerMixin {
  String get summary;
  int get id;
  String get title;
  String get summaryAuto;
  String get url;
  String get mobileUrl;
  String get siteName;
  String get language;
  String get authorName;
  String get publishDate;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'summary': summary,
        'id': id,
        'title': title,
        'summaryAuto': summaryAuto,
        'url': url,
        'mobileUrl': mobileUrl,
        'siteName': siteName,
        'language': language,
        'authorName': authorName,
        'publishDate': publishDate
      };
}
