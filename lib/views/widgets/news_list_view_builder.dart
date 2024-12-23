import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/cubit/get_news_cubit_cubit.dart';

import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<GetNewsCubitCubit>(context)
        .getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubitCubit, GetNewsCubitState>(
      builder: (context, state) {
        if (state is GetNewsCubitLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is GetNewsCubitSuccess) {
          return NewsListView(articles: state.articles);
        } else if (state is GetNewsCubitFailure) {
          return Center(
            child: Text('Error: ${state.errorMessage}'),
          );
        }

        return const SliverToBoxAdapter(child: SizedBox.shrink());
      },
    );
  }
}
