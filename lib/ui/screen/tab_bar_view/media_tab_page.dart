import 'package:flutter/material.dart';

class MediaTabPage extends StatelessWidget {
  const MediaTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 31),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/media.png",),
            ...[const SizedBox(height: 6,)],
            Text("Brentford vs Manchester City Highlights", style: Theme.of(context).textTheme.bodyLarge),
            ...[const SizedBox(height: 61,)],
            Image.asset("assets/images/media.png",),
            ...[const SizedBox(height: 6,)],
            Text("Brentford vs Manchester City Highlights", style: Theme.of(context).textTheme.bodyLarge),
            ...[const SizedBox(height: 61,)],
            Image.asset("assets/images/media.png",),
            ...[const SizedBox(height: 6,)],
            Text("Brentford vs Manchester City Highlights", style: Theme.of(context).textTheme.bodyLarge),
            ...[const SizedBox(height: 61,)],
          ],
        ),
      ),
    );
  }
}
