import 'package:anime_list/featuers/search/domain/model/search_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../../data/request/search_request.dart';
import '../repository/search_repository.dart';

class SearchBaseUseCaseInput {
  String? name;

  SearchBaseUseCaseInput({
    required this.name,
  });
}

class SearchUseCase
    implements BaseUseCase<SearchBaseUseCaseInput, SearchModel> {
  final SearchRepository _searchRepository;

  SearchUseCase(this._searchRepository);

  @override
  Future<Either<Failer, SearchModel>> execute(
      SearchBaseUseCaseInput input) async {
    return await _searchRepository.search(SearchRequest(
      name: input.name,
    ));
  }
}
