// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JOP_REPONSE_MODEL.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JopReponseModel _$JopReponseModelFromJson(
  Map<String, dynamic> json,
) => JopReponseModel(
  apiVersion: json['apiVersion'] as String?,
  documentationUrl: json['documentationUrl'] as String?,
  friendlyNotice: json['friendlyNotice'] as String?,
  jobCount: (json['jobCount'] as num?)?.toInt(),
  lastUpdate: json['lastUpdate'] as String?,
  appliedFilters: json['appliedFilters'] == null
      ? null
      : AppliedFilters.fromJson(json['appliedFilters'] as Map<String, dynamic>),
  jobs: (json['jobs'] as List<dynamic>?)
      ?.map((e) => e == null ? null : Jobs.fromJson(e as Map<String, dynamic>))
      .toList(),
  success: json['success'] as bool?,
);

Map<String, dynamic> _$JopReponseModelToJson(JopReponseModel instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'documentationUrl': instance.documentationUrl,
      'friendlyNotice': instance.friendlyNotice,
      'jobCount': instance.jobCount,
      'lastUpdate': instance.lastUpdate,
      'appliedFilters': instance.appliedFilters,
      'jobs': instance.jobs,
      'success': instance.success,
    };

Jobs _$JobsFromJson(Map<String, dynamic> json) => Jobs(
  id: (json['id'] as num?)?.toInt(),
  url: json['url'] as String?,
  jobSlug: json['jobSlug'] as String?,
  jobTitle: json['jobTitle'] as String?,
  companyName: json['companyName'] as String?,
  companyLogo: json['companyLogo'] as String?,
  jobIndustry: (json['jobIndustry'] as List<dynamic>?)
      ?.map((e) => e as String?)
      .toList(),
  jobType: (json['jobType'] as List<dynamic>?)
      ?.map((e) => e as String?)
      .toList(),
  jobGeo: json['jobGeo'] as String?,
  jobLevel: json['jobLevel'] as String?,
  jobExcerpt: json['jobExcerpt'] as String?,
  jobDescription: json['jobDescription'] as String?,
  pubDate: json['pubDate'] as String?,
  salaryMin: (json['salaryMin'] as num?)?.toInt(),
  salaryMax: (json['salaryMax'] as num?)?.toInt(),
  salaryCurrency: json['salaryCurrency'] as String?,
  salaryPeriod: json['salaryPeriod'] as String?,
);

Map<String, dynamic> _$JobsToJson(Jobs instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'jobSlug': instance.jobSlug,
  'jobTitle': instance.jobTitle,
  'companyName': instance.companyName,
  'companyLogo': instance.companyLogo,
  'jobIndustry': instance.jobIndustry,
  'jobType': instance.jobType,
  'jobGeo': instance.jobGeo,
  'jobLevel': instance.jobLevel,
  'jobExcerpt': instance.jobExcerpt,
  'jobDescription': instance.jobDescription,
  'pubDate': instance.pubDate,
  'salaryMin': instance.salaryMin,
  'salaryMax': instance.salaryMax,
  'salaryCurrency': instance.salaryCurrency,
  'salaryPeriod': instance.salaryPeriod,
};

AppliedFilters _$AppliedFiltersFromJson(Map<String, dynamic> json) =>
    AppliedFilters(count: (json['count'] as num?)?.toInt());

Map<String, dynamic> _$AppliedFiltersToJson(AppliedFilters instance) =>
    <String, dynamic>{'count': instance.count};
