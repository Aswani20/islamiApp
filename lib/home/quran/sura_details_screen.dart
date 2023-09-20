import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/item_sura_details.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        provider.isDark()
            ? Image.asset(
                'assets/images/main_background_dark.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                'assets/images/main_bg.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.length == 0
              ? Center(child: CircularProgressIndicator())
              : Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.06,
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                    color: provider.isDark()
                        ? MyTheme.primaryDark
                        : MyTheme.whiteColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                      color: provider.isDark()
                          ? MyTheme.whiteColor
                          : Theme.of(context).primaryColor,
                      thickness: 3,
                    ),
              itemBuilder: (context, index) => ItemSuraDetails(
                content: verses[index],
                index: index,
              ),
              itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.index, required this.name});
}
