part of 'newest_books_cubit.dart';

sealed class newestBooksState extends Equatable {
  const newestBooksState();

  @override
  List<Object> get props => [];
}

final class newestBooksInitial extends newestBooksState {}

class newestBooksLoading extends newestBooksState {}

class newestBooksFailure extends newestBooksState {
  final String errMessage;

  const newestBooksFailure(this.errMessage);
}

class newestBooksSuccess extends newestBooksState {
  final List<BookModel> books;

  const newestBooksSuccess(this.books);
}
