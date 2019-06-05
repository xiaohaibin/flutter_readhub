import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';


@JsonSerializable()
class NewsModel extends Object with _$NewsModelSerializerMixin{

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'totalItems')
  int totalItems;

  @JsonKey(name: 'totalPages')
  int totalPages;

  NewsModel(this.data,this.pageSize,this.totalItems,this.totalPages,);

  factory NewsModel.fromJson(Map<String, dynamic> srcJson) => _$NewsModelFromJson(srcJson);

}


@JsonSerializable()
class Data extends Object with _$DataSerializerMixin{

  @JsonKey(name: 'summary')
  String summary;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'summaryAuto')
  String summaryAuto;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'mobileUrl')
  String mobileUrl;

  @JsonKey(name: 'siteName')
  String siteName;

  @JsonKey(name: 'language')
  String language;

  @JsonKey(name: 'authorName')
  String authorName;

  @JsonKey(name: 'publishDate')
  String publishDate;

  Data(this.summary,this.id,this.title,this.summaryAuto,this.url,this.mobileUrl,this.siteName,this.language,this.authorName,this.publishDate,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

}
