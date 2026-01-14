import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwithjiji/features/jiji_ai/logic/bloc_logic.dart';
import 'package:learnwithjiji/features/jiji_ai/presentation/screens/jiji_screen.dart';


void main() {
  runApp(
    BlocProvider(
      create: (_) => JijiBloc(),
      child: const MyApp(),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JijiScreen(),
    );
  }
}
