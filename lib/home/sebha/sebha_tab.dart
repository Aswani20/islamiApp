import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              provider.isDark()
                  ? Image.asset('assets/images/head_of_sebha_dark.png')
                  : Image.asset('assets/images/head_of_sebha.png'),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height * 0.09,
                  bottom: MediaQuery.of(context).size.height * 0.04,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                      angle += 30;
                    });
                  },
                  child: Transform.rotate(
                    angle: angle,
                    child: provider.isDark()
                        ? Image.asset('assets/images/sebha_dark.png')
                        : Image.asset('assets/images/sebha.png'),
                  ),
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.tasbeh_number,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: provider.isDark()
                  ? MyTheme.yellowColor
                  : Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Text(
              counter < 33
                  ? AppLocalizations.of(context)!.sobhan_allah
                  : counter < 66
                      ? AppLocalizations.of(context)!.allhamdollah
                      : counter < 99
                          ? AppLocalizations.of(context)!.astakfer_allah
                          : AppLocalizations.of(context)!.allah_akber,
              style: provider.isDark()
                  ? Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: MyTheme.blackColor)
                  : Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: Text(
              AppLocalizations.of(context)!.reset,
              style: TextStyle(color: Color(0xffB7935F)),
            ),
          ),
        ],
      ),
    );
  }
}
