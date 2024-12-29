import 'package:evently_app/providers/app_language_provider.dart';
import 'package:evently_app/utils/app_color.dart';
import 'package:evently_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<AppLanguageProvider> (context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: (){
           languageProvider.changeLanguage('en');
          },
          child:languageProvider.appLanguage == 'en'?
              getUnSelectedItemWidget(AppLocalizations.of(context)!.english):
              getUnSelectedItemWidget(AppLocalizations.of(context)!.english)
        ),
        SizedBox(
          height:height *0.02 ,
        ),
        InkWell(
          onTap: (){
            languageProvider.changeLanguage('ar');
          },
          child: languageProvider.appLanguage == 'ar' ?
              getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic) :
              getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic)
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
