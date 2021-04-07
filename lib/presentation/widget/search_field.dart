import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/application/dictionary/dictionary_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends HookWidget {
  const SearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DictionaryBloc dictionaryBloc =
        BlocProvider.of<DictionaryBloc>(context);
    final TextEditingController searchController =
        useTextEditingController(text: '');
    final _formKey = useMemoized(() => GlobalKey<FormState>());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Form(
        key: _formKey,
        child: TextFormField(
          controller: searchController,
          onFieldSubmitted: (s) {
            dictionaryBloc.add(SearchWord(searchText: searchController.text));
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.circular(30.sp)),
              prefixIcon: IconButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  dictionaryBloc
                      .add(SearchWord(searchText: searchController.text));
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  searchController.clear();
                  dictionaryBloc.add(const LoadWords());
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
              ),
              filled: true,
              fillColor: Colors.white),
        ),
      ),
    );
  }
}
