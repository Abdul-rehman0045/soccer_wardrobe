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
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    Audio.audioPlayer.play(AssetSource(Assets.sound));
    Audio.audioPlayer.setReleaseMode(ReleaseMode.loop);

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    Audio.audioPlayer.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Stop music playback when app goes to background
      Audio.audioPlayer.pause();
    }
    if (state == AppLifecycleState.resumed) {
      // Stop music playback when app goes to background
      Audio.audioPlayer.resume();
    }
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: AppColors.navState,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en'), // English
              Locale('ru'), // Russian
            ],
            locale: provider.locale,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: HomeView(),
          );
        },
      );
}
