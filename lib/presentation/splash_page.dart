import 'package:flutter/material.dart';
import 'package:flutter_bangla_dictionary/application/dictionary/dictionary_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<DictionaryBloc, DictionaryState>(
      listenWhen: (p, c) => p.showHome != c.showHome,
      listener: (context, state) {
        if (state.showHome) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomePage(
                    title: 'Bangla Dictionary',
                  )));
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'asset/splash.png',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 120.h),
              child: const SpinKitFadingCircle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
