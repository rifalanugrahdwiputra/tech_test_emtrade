// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:equatable/equatable.dart';

class ClassificationImageParams extends Equatable {
  final File files;

  const ClassificationImageParams(
    this.files,
  );

  @override
  List<Object?> get props => [
        files,
      ];
}
