import 'package:flutter/material.dart';

class TeamTabPage extends StatelessWidget {
  const TeamTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 26.0, top: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Goalkeepers",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ...[const SizedBox(height: 18,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 13,
                location: "England"),
             ...[const SizedBox(height: 12,)],
             Align(
                alignment: Alignment.center,
                child: Container(
                  height: 1,
                  color: Colors.grey,
                  width: 305,
                ),
              ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 11,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 18,)],
            Text(
              "Defenders",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ...[const SizedBox(height: 22,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 18,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 26,)],
            Text(
              "Midfielders",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ...[const SizedBox(height: 22,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 18,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 26,)],
            Text(
              "Forwards",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ...[const SizedBox(height: 22,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 18,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 12,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 23,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
            ...[const SizedBox(height: 26,)],
            Text(
              "Coach",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ...[const SizedBox(height: 22,)],
            PlayerCard(
                namePlayer: "Player name",
                age: 24,
                goal: 18,
                location: "England"),
            ...[const SizedBox(height: 12,)],
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: Colors.grey,
                width: 305,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  PlayerCard(
      {super.key,
      required this.namePlayer,
      required this.age,
      required this.goal,
      required this.location});

  String namePlayer;
  int age;
  String location;
  int goal;

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: brightness == Brightness.light
                  ? Colors.grey[200]
                  : const Color(0xFF141C21),
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Icon(
              Icons.person_2_outlined,
              size: 18,
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
          ...[
            const SizedBox(
              width: 16,
            )
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(namePlayer,
                    style: Theme.of(context).textTheme.headlineMedium),
                ...[const SizedBox(height: 5,)],
                Row(
                  children: [
                    Text("Age: ",
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text(age.toString(),
                        style: Theme.of(context).textTheme.headlineSmall),
                    ...[
                      const SizedBox(
                        width: 8,
                      )
                    ],
                    const Icon(
                      Icons.fiber_manual_record,
                      size: 8,
                      color: Color(0xFF808697),
                    ),
                    ...[
                      const SizedBox(
                        width: 8,
                      )
                    ],
                    Text("From: ",
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text(location,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 40,
              height: 24,
              child: Text(goal.toString(),
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
          ),
        ],
      );
  }
}

