import 'package:flutter/material.dart';

class TransferTabPage extends StatelessWidget {
  const TransferTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, bottom: 26.0, top: 4.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  isScrollable: true,
                  labelColor: brightness == Brightness.light
                      ? Colors.red
                      : Colors.yellow,
                  unselectedLabelColor: const Color(0xFF808697),
                  indicator: BoxDecoration(
                    color: brightness == Brightness.light
                        ? const Color(0xFFEEEEEE)
                        : const Color(0xFF141C21),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  tabs: const <Widget>[
                    Tab(text: "Arrivals"),
                    Tab(text: "Departures"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(child: _arrivals()),
                  SingleChildScrollView(child: _arrivals()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _arrivals() {
    return Table(
      defaultColumnWidth: const FixedColumnWidth(120.0),
      border:
          const TableBorder(horizontalInside: BorderSide(color: Colors.grey)),
      children: [
        const TableRow(children: [
          Column(children: [
            Text('Playes(s)',
                style: TextStyle(fontSize: 14.0, color: Colors.grey))
          ]),
          Column(children: [
            Text('From/To',
                style: TextStyle(fontSize: 14.0, color: Colors.grey))
          ]),
          Column(children: [
            Icon(
              Icons.euro_outlined,
              size: 14,
              color: Colors.grey,
            )
          ]),
        ]),
        TableRow(children: [
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Image.asset("assets/images/Image.png"),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "Josko Gvardiol",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/1_1.png",
                      width: 30,
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Icon(
                      Icons.trending_flat_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "05.08.2023",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          const Column(children: [
            ...[
              const SizedBox(
                height: 28,
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "100M",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    width: 3,
                  )
                ],
                Icon(
                  Icons.euro_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
        ]),
        TableRow(children: [
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Image.asset("assets/images/Image.png"),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "Mateo Kovacic",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/1_2.png",
                      width: 30,
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Icon(
                      Icons.trending_flat_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "05.08.2023",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          const Column(children: [
            ...[
              const SizedBox(
                height: 28,
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "100M",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    width: 3,
                  )
                ],
                Icon(
                  Icons.euro_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
        ]),
        TableRow(children: [
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Image.asset("assets/images/Image.png"),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "Issa Kabore",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/1_3.png",
                      width: 30,
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Icon(
                      Icons.trending_flat_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "05.08.2023",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          const Column(children: [
            ...[
              const SizedBox(
                height: 28,
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "-",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    width: 3,
                  )
                ],
                Icon(
                  Icons.euro_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
        ]),
        TableRow(children: [
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Image.asset("assets/images/Image.png"),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "Joao Cancelo",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/1_2.png",
                      width: 30,
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Icon(
                      Icons.trending_flat_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "05.08.2023",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          const Column(children: [
            ...[
              const SizedBox(
                height: 28,
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "-",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    width: 3,
                  )
                ],
                Icon(
                  Icons.euro_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
        ]),
        TableRow(children: [
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Image.asset("assets/images/Image.png"),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "Mateo Kovacic",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/1_5.png",
                      width: 30,
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Icon(
                      Icons.trending_flat_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "05.08.2023",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          const Column(children: [
            ...[
              const SizedBox(
                height: 28,
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "-",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    width: 3,
                  )
                ],
                Icon(
                  Icons.euro_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
        ]),
        TableRow(children: [
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Image.asset("assets/images/Image.png"),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "T. Harwood-Bellis",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          Column(children: [
            Column(
              children: [
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/1_6.png",
                      width: 30,
                      height: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Icon(
                      Icons.trending_flat_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                ...[
                  const SizedBox(
                    height: 5,
                  )
                ],
                const Text(
                  "05.08.2023",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
          const Column(children: [
            ...[
              const SizedBox(
                height: 28,
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "-",
                  style: TextStyle(fontSize: 10),
                ),
                ...[
                  const SizedBox(
                    width: 3,
                  )
                ],
                Icon(
                  Icons.euro_outlined,
                  size: 10,
                  color: Colors.grey,
                ),
                ...[
                  const SizedBox(
                    height: 10,
                  )
                ],
              ],
            )
          ]),
        ]),
      ],
    );
  }
}
