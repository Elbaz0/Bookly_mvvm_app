import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewstBooks() async {
    var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
    List<BookModel> Books = [];
    for (var item in data['items']) {
      Books.add(BookModel.fromJson(item));
    }
    return right(Books);
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchBooks() {
    throw UnimplementedError();
  }
}
