import 'package:equatable/equatable.dart';

class ArticleContentParams extends Equatable {
  final int? page;
  final int? size;
  final String? sort;
  final String? query;

  const ArticleContentParams({
    this.page,
    this.size,
    this.sort,
    this.query,
  });

  @override
  List<Object?> get props => [
    page,
    size,
    sort,
    query,
  ];
}
