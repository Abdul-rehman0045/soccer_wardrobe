// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:soccer_fan_wardrobe/helper/assets.dart';
import 'package:soccer_fan_wardrobe/helper/colors.dart';
import 'package:soccer_fan_wardrobe/helper/description.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DescriptionView extends StatelessWidget {
  DescriptionView({super.key, required this.index});
  int index;

  List<Description> descriptionList = [
    Description(AppLocalizations.of(AppColors.navState.currentContext!)!.desc_1,
        [Assets.realMadridDescriptionImg], Assets.realMadrid),
    Description(AppLocalizations.of(AppColors.navState.currentContext!)!.desc_2, [Assets.liverDescriptionImg], Assets.liverpool),
    Description(
        AppLocalizations.of(AppColors.navState.currentContext!)!.desc_3,
        [
          Assets.barcelonaDesciptionImg1,
          Assets.barcelonaDesciptionImg2,
        ],
        Assets.barcelona),
  ];

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
            Column(
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                   AppLocalizations.of(AppColors.navState.currentContext!)!.looks_for_match,
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 192,
                                  width: 248,
                                  decoration: BoxDecoration(
                                    color: AppColors.kLeadingColor.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.95),
                                    ),
                                  ),
                                  child: Image.asset(descriptionList[index].images[0]),
                                ),
                                if (index == 2)
                                  SizedBox(
                                    height: 10,
                                  ),
                                if (index == 2)
                                  Container(
                                    height: 192,
                                    width: 248,
                                    decoration: BoxDecoration(
                                      color: AppColors.kLeadingColor.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.grey.withOpacity(0.95),
                                      ),
                                    ),
                                    child: Image.asset(
                                      descriptionList[index].images[1],
                                      height: 192,
                                    ),
                                  ),
                              ],
                            ),
                            Container(
                              height: index == 2 ? 388 : 192,
                              decoration: BoxDecoration(
                                color: AppColors.kLeadingColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.95),
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      descriptionList[index].icon!,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          descriptionList[index].description!,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
