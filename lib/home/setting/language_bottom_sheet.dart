import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'
                ? getSelectedItemWidget(
                    context, AppLocalizations.of(context)!.english)
                : getUnselectedItemWidget(
                    context, AppLocalizations.of(context)!.english)),
        InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: provider.appLanguage == 'ar'
                ? getSelectedItemWidget(
                    context, AppLocalizations.of(context)!.arabic)
                : getUnselectedItemWidget(
                    context, AppLocalizations.of(context)!.arabic)),
      ],
    );
  }

  Widget getSelectedItemWidget(BuildContext context, String text) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: provider.isDark()
                ? Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: MyTheme.blackColor)
                : Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).primaryColor),
          ),
          Icon(
            Icons.check,
            size: 30,
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }

  Widget getUnselectedItemWidget(BuildContext context, String text) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: provider.isDark()
            ? Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: MyTheme.blackColor)
            : Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
