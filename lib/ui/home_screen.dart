import 'package:evently_app/providers/app_language_provider.dart';
import 'package:evently_app/providers/app_theme_provider.dart';
import 'package:evently_app/ui/home_screen/language_bottom_sheet.dart';
import 'package:evently_app/ui/home_screen/theme_bottom_sheet.dart';
import 'package:evently_app/utils/app_color.dart';
import 'package:evently_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var languageProvider = Provider.of<AppLanguageProvider>(context);
  var themeProvider = Provider.of<AppThemeProvider>(context);
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:AppColor.primaryLight ,


      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Text(AppLocalizations.of(context)!.language,
            style: AppStyle.bold20Black,
          ) ,
           SizedBox(height:height*0.02 ,),
           InkWell(
             onTap:(){
              showLanguageBottomSheet();
             } ,
             child: Container(
               padding: EdgeInsets.symmetric(vertical: 16 , horizontal: 8),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(16),
                 border: Border.all(
                   color: AppColor.primaryLight,
                   width: 2
                 )
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(languageProvider.appLanguage == 'en'?
                       AppLocalizations.of(context)!.english :
                       AppLocalizations.of(context)!.arabic,
                   style: AppStyle.bold20Primary),
                   Icon(Icons.arrow_drop_down,
                   color: AppColor.primaryLight,
                   size: 35,)
                 ],
               ),
             ),
           ),
           SizedBox(height:height*0.02 ,),
           Text(AppLocalizations.of(context)!.theme,
             style: AppStyle.bold20Black,
           ) ,
           SizedBox(height:height*0.02 ,),
           InkWell(
             onTap:(){
               showThemeBottomSheet();
             } ,
             child: Container(
               padding: EdgeInsets.symmetric(vertical: 16 , horizontal: 8),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(
                       color: AppColor.primaryLight,
                       width: 2
                   )
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(themeProvider.isDarkMode() ?
                   AppLocalizations.of(context)!.dark :
                   AppLocalizations.of(context)!.light ,
                       style: AppStyle.bold20Primary),
                   Icon(Icons.arrow_drop_down,
                     color: AppColor.primaryLight,
                     size: 35,)
                 ],
               ),
             ),
           ),
         ],
        ),
      )
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => languageBottomSheet()
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) => ThemeBottomSheet()
    );
  }
}