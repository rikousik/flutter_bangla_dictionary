import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/application/dictionary/dictionary_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharList extends StatelessWidget {
  final List<String> characters;
  const CharList({Key key, @required this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: characters.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                BlocProvider.of<DictionaryBloc>(context)
                    .add(SearchWord(searchText: characters[index]));
              },
              child: Container(
                padding: EdgeInsets.all(15.w),
                margin: EdgeInsets.only(left: 10.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    shape: BoxShape.circle),
                child: Text(
                  characters[index],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
