import 'package:evently_app/providers/app_language_provider.dart';
import 'package:evently_app/utils/app_color.dart';
import 'package:evently_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/app_theme_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var themeProvider = Provider.of<AppThemeProvider> (context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: (){
           themeProvider.changeTheme(ThemeMode.dark);
          },
          child:themeProvider.appTheme == ThemeMode.dark?
              getUnSelectedItemWidget(AppLocalizations.of(context)!.dark):
              getUnSelectedItemWidget(AppLocalizations.of(context)!.dark)
        ),
        SizedBox(
          height:height *0.02 ,
        ),
        InkWell(
          onTap: (){
            themeProvider.changeTheme(ThemeMode.light);
          },
          child: themeProvider.isDarkMode()?
              getSelectedItemBottom(AppLocalizations.of(context)!.light) :
              getUnSelectedItemWidget(AppLocalizations.of(context)!.light)
        ),

      ],
      ),
    );
  }

  Widget getSelectedItemBottom( String text){
   return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text,
        style: AppStyle.bold20Primary,
      ),

      const Icon(Icons.check ,
        color: AppColor.primaryLight,
        size: 25,)
    ],
  );

  }

  Widget getUnSelectedItemWidget( String text){
    return  Text(text,
      style: AppStyle.bold20Black,);
  }
}
