import 'package:json_annotation/json_annotation.dart';

part 'topic_model.g.dart';


@JsonSerializable()
class TopicModel extends Object with _$TopicModelSerializerMixin{

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'totalItems')
  int totalItems;

  @JsonKey(name: 'totalPages')
  int totalPages;

  TopicModel(this.data,this.pageSize,this.totalItems,this.totalPages,);

  factory TopicModel.fromJson(Map<String, dynamic> srcJson) => _$TopicModelFromJson(srcJson);

}


@JsonSerializable()
class Data extends Object with _$DataSerializerMixin{

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'newsArray')
  List<NewsArray> newsArray;

  @JsonKey(name: 'createdAt')
  String createdAt;

  @JsonKey(name: 'eventData')
  List<EventData> eventData;

  @JsonKey(name: 'publishDate')
  String publishDate;

  @JsonKey(name: 'summary')
  String summary;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'updatedAt')
  String updatedAt;

  @JsonKey(name: 'timeline')
  String timeline;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'hasInstantView')
  bool hasInstantView;

  @JsonKey(name: 'extra')
  Extra extra;

  Data(this.id,this.newsArray,this.createdAt,this.eventData,this.publishDate,this.summary,this.title,this.updatedAt,this.timeline,this.order,this.hasInstantView,this.extra,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

}


@JsonSerializable()
class NewsArray extends Object with _$NewsArraySerializerMixin{

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'siteName')
  String siteName;

  @JsonKey(name: 'mobileUrl')
  String mobileUrl;

  @JsonKey(name: 'autherName')
  String autherName;

  @JsonKey(name: 'duplicateId')
  int duplicateId;

  @JsonKey(name: 'publishDate')
  String publishDate;

  @JsonKey(name: 'language')
  String language;

  @JsonKey(name: 'statementType')
  int statementType;

  NewsArray(this.id,this.url,this.title,this.siteName,this.mobileUrl,this.autherName,this.duplicateId,this.publishDate,this.language,this.statementType,);

  factory NewsArray.fromJson(Map<String, dynamic> srcJson) => _$NewsArrayFromJson(srcJson);

}


@JsonSerializable()
class EventData extends Object with _$EventDataSerializerMixin{

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'topicId')
  String topicId;

  @JsonKey(name: 'eventType')
  int eventType;

  @JsonKey(name: 'entityId')
  String entityId;

  @JsonKey(name: 'entityType')
  String entityType;

  @JsonKey(name: 'entityName')
  String entityName;

  @JsonKey(name: 'state')
  int state;

  @JsonKey(name: 'createdAt')
  String createdAt;

  @JsonKey(name: 'updatedAt')
  String updatedAt;

  EventData(this.id,this.topicId,this.eventType,this.entityId,this.entityType,this.entityName,this.state,this.createdAt,this.updatedAt,);

  factory EventData.fromJson(Map<String, dynamic> srcJson) => _$EventDataFromJson(srcJson);

}


@JsonSerializable()
class Extra extends Object with _$ExtraSerializerMixin{

  @JsonKey(name: 'instantView')
  bool instantView;

  Extra(this.instantView,);

  factory Extra.fromJson(Map<String, dynamic> srcJson) => _$ExtraFromJson(srcJson);

}


