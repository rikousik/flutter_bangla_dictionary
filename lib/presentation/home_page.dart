import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/application/dictionary/dictionary_bloc.dart';
import 'package:flutter_bangla_dictionary/presentation/widget/char_list.dart';
import 'package:flutter_bangla_dictionary/presentation/widget/search_field.dart';
import 'package:flutter_bangla_dictionary/presentation/widget/word_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<DictionaryBloc, DictionaryState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: colorScheme.primary,
            elevation: 0,
            title: Text(title),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20))),
                child: Column(
                  children: [
                    const SearchField(),
                    CharList(
                      characters: state.letters,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                ),
                child: Container(
                  height: 50.h,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10.sp,
                    left: 10.sp,
                    right: 10.sp,
                  ),
                  decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20))),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.words.length,
                      itemBuilder: (context, index) =>
                          WordTile(word: state.words[index])),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
