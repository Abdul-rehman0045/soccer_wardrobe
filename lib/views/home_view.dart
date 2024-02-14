import 'package:flutter/material.dart';
import 'package:soccer_fan_wardrobe/helper/assets.dart';
import 'package:soccer_fan_wardrobe/helper/colors.dart';
import 'package:soccer_fan_wardrobe/views/description_view.dart';
import 'package:soccer_fan_wardrobe/views/setting_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DescriptionView(index: 0),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            decoration: BoxDecoration(
                              color: AppColors.kLeadingColor.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.95),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 58,
                                  height: 58,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.kLeadingColor.withOpacity(0.7),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.95),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    Assets.realMadrid,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Transform.translate(
                                      offset: Offset(0, -15),
                                      child: Text(
                                        AppLocalizations.of(AppColors.navState.currentContext!)!.real_madrid.toUpperCase(),
                                        style: TextStyle(
                                          color: AppColors.kTextColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DescriptionView(index: 1),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            decoration: BoxDecoration(
                                color: AppColors.kLeadingColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.95),
                                )),
                            child: Row(
                              children: [
                                Container(
                                  width: 58,
                                  height: 58,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.kLeadingColor.withOpacity(0.7),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.95),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    Assets.liverpool,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Transform.translate(
                                      offset: Offset(0, -15),
                                      child: Text(
                                        AppLocalizations.of(AppColors.navState.currentContext!)!.liver_pool.toUpperCase(),
                                        style: TextStyle(
                                          color: AppColors.kTextColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DescriptionView(index: 2),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            decoration: BoxDecoration(
                                color: AppColors.kLeadingColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.95),
                                )),
                            child: Row(
                              children: [
                                Container(
                                  width: 58,
                                  height: 58,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.kLeadingColor.withOpacity(0.7),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.95),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    Assets.barcelona,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Transform.translate(
                                      offset: Offset(0, -15),
                                      child: Text(
                                        AppLocalizations.of(AppColors.navState.currentContext!)!.barcelona.toUpperCase(),
                                        style: TextStyle(
                                          color: AppColors.kTextColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingView(),
            ),
          );
        },
        child: Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.kLeadingColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.withOpacity(0.95),
            ),
          ),
          child: Image.asset(Assets.settingBtn),
        ),
      ),
    );
  }
}
