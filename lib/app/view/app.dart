import 'package:flutter/material.dart';
import 'package:flutter_interview/app/view/theme_notifier.dart';
import 'package:flutter_interview/l10n/l10n.dart';
import 'package:flutter_interview/ui/list/article_list_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    ThemeNotifier.instance.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeNotifier.instance.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const ArticleListPage(),
    );
  }

  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF2E66D4),
          backgroundColor: const Color(0xFFF9F9F9),
          cardColor: Colors.white,
        ),
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          bodyMedium: TextStyle(color: Color(0xFF909094), fontSize: 14),
          bodyLarge: TextStyle(
            color: Color(0xFF909094),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        primaryColor: Colors.white,
      );

  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          // accentColor: const Color(0xFF2E66D4),
          accentColor: const Color(0xFF2E66D4),
          backgroundColor: const Color(0xFF060606),
          cardColor: const Color(0xFF161616),
        ),
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          bodyMedium: TextStyle(color: Color(0xFFB0B0B4), fontSize: 14),
          bodyLarge: TextStyle(
            color: Color(0xFFB0B0B4),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        primaryColor: Colors.black,
      );
}
