import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:soccer_fan_wardrobe/helper/assets.dart';
import 'package:soccer_fan_wardrobe/helper/audio.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:soccer_fan_wardrobe/helper/colors.dart';
import 'package:soccer_fan_wardrobe/providers/locale_provider.dart';
import 'package:soccer_fan_wardrobe/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Audio.audioPlayer.play(AssetSource(Assets.sound));
    Audio.audioPlayer.setReleaseMode(ReleaseMode.loop);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(create: (context) => LocaleProvider(),builder: (context,child){
    final provider = Provider.of<LocaleProvider>(context);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppColors.navState,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en','GB '), // English
        Locale('ru'), // Russian
      ],
      locale: provider.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  },);
}

// MaterialApp(
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [
//         Locale('en','gb '), // English
//         Locale('ru'), // Spanish
//       ],
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: HomeView(),
//     );