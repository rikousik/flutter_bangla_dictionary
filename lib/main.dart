import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/domain/word/word.dart';
import 'package:flutter_bangla_dictionary/infrustructure/dictionary_provider.dart';
import 'package:flutter_bangla_dictionary/presentation/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'application/dictionary/dictionary_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(WordAdapter());
  await Hive.openBox('dictionaryBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(490.9, 1036.4),
      builder: () => BlocProvider(
        create: (context) =>
            DictionaryBloc(dictionaryProvider: DictionaryProvider())
              ..add(const LoadWords()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bangla Dictionary',
          theme: ThemeData(
            primaryColor: const Color(0xFFD4334C),
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xFFD4334C),
                primaryVariant: const Color(0xFFB72F44),
                secondary: const Color(0xFFE7EAF0)),
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: const SplashPage(),
          // home: const HomePage(
          //   title: 'Bangla Dictionary',
          // ),
        ),
      ),
    );
  }
}
