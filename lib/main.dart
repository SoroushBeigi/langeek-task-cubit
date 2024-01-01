import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/theme.dart';
import 'package:task/features/feature_vocabulary/presentation/cubit/word_cubit.dart';
import 'package:task/features/feature_vocabulary/presentation/word_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/injections.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(
    ScreenUtilInit(
        designSize: const Size(320, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: BlocProvider(
        create: (context) => WordCubit(repo: locator()),
        child: const WordScreen(title: 'Hello & Goodbye'),
      ),
    );
  }
}
