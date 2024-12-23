import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news_app/models/article_model.dart';

part 'get_news_cubit_state.dart';

class GetNewsCubitCubit extends Cubit<GetNewsCubitState> {
  GetNewsCubitCubit() : super(GetNewsCubitInitial());

  final Dio dio = Dio();
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    emit(GetNewsCubitLoading());
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      emit(GetNewsCubitSuccess());
      return articlesList;
    } catch (e) {
      emit(GetNewsCubitFailure(errorMessage: e.toString()));
      return [];
    }
  }
}