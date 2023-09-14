import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(index: index, name: name));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
