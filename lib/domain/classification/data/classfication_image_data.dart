import 'package:equatable/equatable.dart';

class ClassficationImageData extends Equatable {
  final String? fileName;
  final String? predictedLabel;
  final String? predictedPercentage;
  final List<DetailedResultDomain>? detailedResults;

  const ClassficationImageData({
    this.fileName,
    this.predictedLabel,
    this.predictedPercentage,
    this.detailedResults,
  });

  @override
  List<Object?> get props => [
        fileName,
        predictedLabel,
        predictedPercentage,
        detailedResults,
      ];
}

class DetailedResultDomain extends Equatable {
  final String? label;
  final String? accuracy;

  const DetailedResultDomain({
    this.label,
    this.accuracy,
  });

  @override
  List<Object?> get props => [
        label,
        accuracy,
      ];
}
