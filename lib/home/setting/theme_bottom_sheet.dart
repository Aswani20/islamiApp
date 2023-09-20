import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDark()
                ? getSelectedItemWidget(
                    context, AppLocalizations.of(context)!.dark)
                : getUnselectedItemWidget(
                    context, AppLocalizations.of(context)!.dark)),
        InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.isDark()
                ? getUnselectedItemWidget(
                    context, AppLocalizations.of(context)!.light)
                : getSelectedItemWidget(
                    context, AppLocalizations.of(context)!.light)),
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
