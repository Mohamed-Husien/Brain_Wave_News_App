import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_news_cubit_state.dart';

class GetNewsCubitCubit extends Cubit<GetNewsCubitState> {
  GetNewsCubitCubit() : super(GetNewsCubitInitial());
}
