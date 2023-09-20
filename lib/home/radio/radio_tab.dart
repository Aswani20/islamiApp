import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio.png'),
        const SizedBox(
          height: 40,
        ),
        Text(
          AppLocalizations.of(context)!.quran_radio,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Icon(
                    Icons.skip_previous,
                    size: 40,
                    color: provider.isDark()
                        ? MyTheme.yellowColor
                        : Theme.of(context).primaryColor,
                  ),
                )),
            const SizedBox(
              width: 40,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  size: 60,
                  color: provider.isDark()
                      ? MyTheme.yellowColor
                      : Theme.of(context).primaryColor,
                )),
            const SizedBox(
              width: 40,
            ),
            IconButton(
                onPressed: () {},
                icon: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Icon(
                    Icons.skip_next,
                    size: 40,
                    color: provider.isDark()
                        ? MyTheme.yellowColor
                        : Theme.of(context).primaryColor,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
