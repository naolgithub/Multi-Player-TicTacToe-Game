import 'package:flutter/material.dart';

import 'screens/create_room_screen.dart';
import 'screens/join_room_screen.dart';
import 'screens/main_menu_screen.dart';
import 'utils/colors.dart';

void main() {
  //1.Utils contains repeated functions,
  //colors or global variables.

  //2.Widgets contains reusable widgets.
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi player tictactoe',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      // home: const MainMenuScreen(),
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
