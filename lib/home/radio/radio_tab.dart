import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio.png'),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Quran Radio',
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
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                  child: Icon(
                    Icons.skip_previous,
                    size: 40,
                    color: Theme.of(context).primaryColor,
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
                  color: Theme.of(context).primaryColor,
                )),
            const SizedBox(
              width: 40,
            ),
            IconButton(
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.skip_next,
                    size: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
