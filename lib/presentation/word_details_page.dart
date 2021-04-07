import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/domain/word/word.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tag_highlighting/tag_highlighting.dart';

class WordDetailsPage extends StatelessWidget {
  final Word word;
  const WordDetailsPage({Key key, @required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorScheme.primary,
        elevation: 0,
        title: Text(word.english),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.h),
            width: double.infinity,
            decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(20))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    word.bangla,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                if (word.pronounciation.isNotEmpty)
                  Text(
                    "(${word.pronounciation.join(', ')})",
                    style: const TextStyle(color: Colors.white70),
                  ),
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
              padding: EdgeInsets.all(30.w),
              decoration: BoxDecoration(
                  color: colorScheme.secondary,
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(20))),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.w),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text("অর্থ: ${word.bangla}"),
                  ),
                  if (word.bnSynonyms.isNotEmpty)
                    Text(
                      'বাংলা সমার্থক শব্দ:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 20.sp),
                    ),
                  if (word.bnSynonyms.isNotEmpty)
                    Text(
                      word.bnSynonyms.join(', '),
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                          fontSize: 18.sp),
                    ),
                  if (word.bnSynonyms.isNotEmpty)
                    SizedBox(
                      height: 20.h,
                    ),
                  if (word.engSynonyms.isNotEmpty)
                    Text(
                      'English synonyms:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 20.sp),
                    ),
                  if (word.engSynonyms.isNotEmpty)
                    Text(
                      word.engSynonyms.join(', '),
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                          fontSize: 18.sp),
                    ),
                  if (word.sentences.isNotEmpty)
                    SizedBox(
                      height: 20.h,
                    ),
                  if (word.sentences.isNotEmpty)
                    Text(
                      'Sentences:\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 20.sp),
                    ),
                  if (word.sentences.isNotEmpty)
                    TagHighlighting(
                      text:
                          "    ${word.sentences.join('\n\n    ')}", // the text to highlight with the tag(s)
                      defaultTextStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                          fontSize: 18.sp),
                      tags: [
                        TagHighlight(
                          tagName: "b",
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.blue,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
