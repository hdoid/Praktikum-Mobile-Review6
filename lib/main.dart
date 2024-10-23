import 'package:flutter/material.dart';
import 'package:prakper7/darkmode.dart';
import 'package:prakper7/model/task_data.dart';
import 'package:prakper7/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => TaskData(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeModeData(),
        )
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          themeMode: Provider.of<ThemeModeData>(context).themeMode,
          darkTheme: ThemeData.dark(useMaterial3: true),
          home: TasksScreen(),
        );
      }),
    );
  }
}
