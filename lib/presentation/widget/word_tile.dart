import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/domain/word/word.dart';
import 'package:flutter_bangla_dictionary/presentation/word_details_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WordTile extends StatelessWidget {
  final Word word;
  const WordTile({Key key, @required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      splashColor: colorScheme.primary,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WordDetailsPage(
                      word: word,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                  height: 10.sp,
                  width: 10.sp,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: colorScheme.primary),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      word.english,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                          fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        word.bnSynonyms.isNotEmpty
                            ? word.bnSynonyms.join(', ')
                            : word.bangla,
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black45,
                            fontSize: 15.sp),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_right_sharp,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
