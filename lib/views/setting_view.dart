// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_fan_wardrobe/helper/assets.dart';
import 'package:soccer_fan_wardrobe/helper/audio.dart';
import 'package:soccer_fan_wardrobe/helper/colors.dart';
import 'package:soccer_fan_wardrobe/providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingView extends StatelessWidget {
  SettingView({super.key});

  bool isSoundOn = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.appBg,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Soccer Fan Wardrobe",
                style: TextStyle(
                  color: AppColors.kTextColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(AppColors.navState.currentContext!)!.language,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            final provider = Provider.of<LocaleProvider>(context, listen: false);
                            provider.setLocale(
                              Locale("ru"),
                            );
                            // Fluttertoast.showToast(msg: "Language Changed");
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 91,
                            width: 115,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.kLeadingColor.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.95),
                              ),
                            ),
                            child: Image.asset(Assets.russiaIcon),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            final provider = Provider.of<LocaleProvider>(context, listen: false);
                            provider.setLocale(
                              Locale('en'),
                            );
                            // Fluttertoast.showToast(msg: "Language Changed");
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 91,
                            width: 115,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.kLeadingColor.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.95),
                              ),
                            ),
                            child: Image.asset(
                              Assets.ukIcon,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        isSoundOn = !isSoundOn;
                        isSoundOn ? Audio.audioPlayer.stop() : Audio.audioPlayer.resume();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: AppColors.kGreenTextColor,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.elliptical(150, 100),
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(AppColors.navState.currentContext!)!.sound,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kGreenTextColor,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.kLeadingColor.withOpacity(0.5),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.95),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          AppLocalizations.of(AppColors.navState.currentContext!)!.back_to_main_menu,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            color: AppColors.kGreenTextColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
