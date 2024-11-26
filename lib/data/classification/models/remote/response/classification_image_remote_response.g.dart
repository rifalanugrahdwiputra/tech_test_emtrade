// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classification_image_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassificationImageRemoteResponse _$ClassificationImageRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ClassificationImageRemoteResponse(
      fileName: json['fileName'] as String?,
      predictedLabel: json['predictedLabel'] as String?,
      predictedPercentage: json['predictedPercentage'] as String?,
      detailedResults: (json['detailedResults'] as List<dynamic>?)
          ?.map((e) => DetailedResultDomainRemoteResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassificationImageRemoteResponseToJson(
        ClassificationImageRemoteResponse instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'predictedLabel': instance.predictedLabel,
      'predictedPercentage': instance.predictedPercentage,
      'detailedResults': instance.detailedResults,
    };

DetailedResultDomainRemoteResponse _$DetailedResultDomainRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    DetailedResultDomainRemoteResponse(
      label: json['label'] as String?,
      accuracy: json['accuracy'] as String?,
    );

Map<String, dynamic> _$DetailedResultDomainRemoteResponseToJson(
        DetailedResultDomainRemoteResponse instance) =>
    <String, dynamic>{
      'label': instance.label,
      'accuracy': instance.accuracy,
    };
