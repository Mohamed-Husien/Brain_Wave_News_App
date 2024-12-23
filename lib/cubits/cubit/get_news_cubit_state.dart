part of 'get_news_cubit_cubit.dart';

@immutable
sealed class GetNewsCubitState {}

final class GetNewsCubitInitial extends GetNewsCubitState {}

final class GetNewsCubitLoading extends GetNewsCubitState {}

final class GetNewsCubitSuccess extends GetNewsCubitState {}

final class GetNewsCubitFailure extends GetNewsCubitState {
  final String errorMessage;

  GetNewsCubitFailure({required this.errorMessage});
}
