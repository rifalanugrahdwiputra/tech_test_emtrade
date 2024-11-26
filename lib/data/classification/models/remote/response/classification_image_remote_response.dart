// ignore_for_file: depend_on_referenced_packages

import 'package:template_mobile_apps/data/utils/models/remote/remote_response_mapper.dart';
import 'package:template_mobile_apps/domain/classification/data/classfication_image_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classification_image_remote_response.g.dart';

@JsonSerializable()
class ClassificationImageRemoteResponse
    implements ResponseMapper<ClassficationImageData> {
  final String? fileName;
  final String? predictedLabel;
  final String? predictedPercentage;
  final List<DetailedResultDomainRemoteResponse>? detailedResults;

  const ClassificationImageRemoteResponse({
    this.fileName,
    this.predictedLabel,
    this.predictedPercentage,
    this.detailedResults,
  });

  factory ClassificationImageRemoteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ClassificationImageRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ClassificationImageRemoteResponseToJson(this);

  @override
  String toString() => toJson().toString();

  @override
  ClassficationImageData toDomain() {
    return ClassficationImageData(
      fileName: fileName,
      predictedLabel: predictedLabel,
      predictedPercentage: predictedPercentage,
      detailedResults: detailedResults?.map((e) => e.toDomain()).toList(),
    );
  }
}

@JsonSerializable()
class DetailedResultDomainRemoteResponse
    implements ResponseMapper<DetailedResultDomain> {
  final String? label;
  final String? accuracy;

  const DetailedResultDomainRemoteResponse({
    this.label,
    this.accuracy,
  });

  factory DetailedResultDomainRemoteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DetailedResultDomainRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DetailedResultDomainRemoteResponseToJson(this);

  @override
  String toString() => toJson().toString();

  @override
  DetailedResultDomain toDomain() {
    return DetailedResultDomain(
      label: label,
      accuracy: accuracy,
    );
  }
}
