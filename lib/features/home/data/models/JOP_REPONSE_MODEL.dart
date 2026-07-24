import 'package:json_annotation/json_annotation.dart';

part 'JOP_REPONSE_MODEL.g.dart';

@JsonSerializable()
class JopReponseModel {
  @JsonKey(name: 'apiVersion')
  final String? apiVersion;
  @JsonKey(name: 'documentationUrl')
  final String? documentationUrl;
  @JsonKey(name: 'friendlyNotice')
  final String? friendlyNotice;
  @JsonKey(name: 'jobCount')
  final int? jobCount;
  @JsonKey(name: 'lastUpdate')
  final String? lastUpdate;
  @JsonKey(name: 'appliedFilters')
  final AppliedFilters? appliedFilters;
  @JsonKey(name: 'jobs')
  final List<Jobs?>? jobs;
  @JsonKey(name: 'success')
  final bool? success;

  JopReponseModel({
    this.apiVersion,
    this.documentationUrl,
    this.friendlyNotice,
    this.jobCount,
    this.lastUpdate,
    this.appliedFilters,
    this.jobs,
    this.success,
  });

  factory JopReponseModel.fromJson(Map<String, dynamic> json) => _$JopReponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$JopReponseModelToJson(this);
}

@JsonSerializable()
class Jobs {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'jobSlug')
  final String? jobSlug;
  @JsonKey(name: 'jobTitle')
  final String? jobTitle;
  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'companyLogo')
  final String? companyLogo;
  @JsonKey(name: 'jobIndustry')
  final List<String?>? jobIndustry;
  @JsonKey(name: 'jobType')
  final List<String?>? jobType;
  @JsonKey(name: 'jobGeo')
  final String? jobGeo;
  @JsonKey(name: 'jobLevel')
  final String? jobLevel;
  @JsonKey(name: 'jobExcerpt')
  final String? jobExcerpt;
  @JsonKey(name: 'jobDescription')
  final String? jobDescription;
  @JsonKey(name: 'pubDate')
  final String? pubDate;
  @JsonKey(name: 'salaryMin')
  final int? salaryMin;
  @JsonKey(name: 'salaryMax')
  final int? salaryMax;
  @JsonKey(name: 'salaryCurrency')
  final String? salaryCurrency;
  @JsonKey(name: 'salaryPeriod')
  final String? salaryPeriod;

  Jobs({
    this.id,
    this.url,
    this.jobSlug,
    this.jobTitle,
    this.companyName,
    this.companyLogo,
    this.jobIndustry,
    this.jobType,
    this.jobGeo,
    this.jobLevel,
    this.jobExcerpt,
    this.jobDescription,
    this.pubDate,
    this.salaryMin,
    this.salaryMax,
    this.salaryCurrency,
    this.salaryPeriod,
  });

  factory Jobs.fromJson(Map<String, dynamic> json) => _$JobsFromJson(json);
  Map<String, dynamic> toJson() => _$JobsToJson(this);
}

@JsonSerializable()
class AppliedFilters {
  @JsonKey(name: 'count')
  final int? count;

  AppliedFilters({
    this.count,
  });

  factory AppliedFilters.fromJson(Map<String, dynamic> json) => _$AppliedFiltersFromJson(json);
  Map<String, dynamic> toJson() => _$AppliedFiltersToJson(this);
}