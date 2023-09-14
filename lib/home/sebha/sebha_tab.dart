import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  List<String> azkar = ['Sobhan Allah', 'Allhamdollah', 'Astakfer Allah'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.1,
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
            'Numbers of Tasbeh',
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
                  ? azkar[0]
                  : counter < 66
                      ? azkar[1]
                      : counter < 99
                          ? azkar[2]
                          : 'Allah Akber',
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
            child: const Text(
              'Reset Counter',
              style: TextStyle(color: Color(0xffB7935F)),
            ),
          ),
        ],
      ),
    );
  }
}
