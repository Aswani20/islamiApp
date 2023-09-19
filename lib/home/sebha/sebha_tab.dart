import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;

  // List<String> azkar = ['Sobhan Allah', 'Allhamdollah', 'Astakfer Allah'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.08,
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
                child: Image.asset('assets/images/sebha.png'),
              ),
            ),
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
              color: Theme.of(context).primaryColor,
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
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: Text(
              AppLocalizations.of(context)!.reset,
              style: const TextStyle(color: Color(0xffB7935F)),
            ),
          ),
        ],
      ),
    );
  }
}
