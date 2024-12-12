import 'package:equatable/equatable.dart';

class CategoriesData extends Equatable {
  final String key;
  final String name;

  const CategoriesData({
    required this.key,
    required this.name,
  });

  @override
  List<Object?> get props => [
        key,
        name,
      ];
}
