import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 94, 230, 133),
        ),
        // appBarTheme is a color of app bar theme (cover all page)
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
        ),
        // colorSchema is a color of application that control the body if doesn't have it will use default color(white).
      ),
      initialRoute: '/',

      routes: {
        '/': (context) => const Homepage(),
      },
    );
  }
}
