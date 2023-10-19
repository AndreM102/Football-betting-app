import 'package:flutter/material.dart';
import 'package:football_betting_flutter/ui/widget/cart_wrapper.dart';

class InfoTabPage extends StatelessWidget {
  const InfoTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: 30,
          spacing: 30,
          alignment: WrapAlignment.center,
          children: [
            infoBlockOne(),
            infoBlockTwo(),
            infoBlockThree(),
            infoBlockFour(),
          ],
        ),
      ),
    );
  }

  Widget infoBlockOne() {
    return CartWrapper(
      children: [
        Image.asset("assets/images/icon1.png"),
        const Padding(padding: EdgeInsets.all(2.0)),
        const Text(
          "Country",
          style: TextStyle(
            color: Color(0xFF808697),
            fontSize: 18,
          ),
        ),
        const Padding(padding: EdgeInsets.all(4.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/gb-eng 1.png"),
            const Text(
              " England",
              style: TextStyle(
                color: Color(0xFF808697),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ]
    );
  }

  Widget infoBlockTwo() {
    return CartWrapper(
      children:  [
        Image.asset("assets/images/icon2.png"),
        const Padding(padding: EdgeInsets.all(2.0)),
        const Text(
          "Team uniform",
          style: TextStyle(
            color: Color(0xFF808697),
            fontSize: 18,
          ),
        ),
        const Padding(padding: EdgeInsets.all(4.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/player1.png"),
            Image.asset("assets/images/player2.png"),
          ],
        )
      ]
    );
  }

  Widget infoBlockThree() {
    return CartWrapper(
      children:  [
        Image.asset("assets/images/icon3.png"),
        const Padding(padding: EdgeInsets.all(2.0)),
        const Text(
          "Etihad Stadium",
          style: TextStyle(
            color: Color(0xFF808697),
            fontSize: 18,
          ),
        ),
        const Padding(padding: EdgeInsets.all(4.0)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Сapacity: 53400",
              style: TextStyle(
                color: Color(0xFF808697),
                fontSize: 14,
              ),
            ),
          ],
        )
      ]
    );
  }

  Widget infoBlockFour() {
    return CartWrapper(
      children:  [
        const Text(
          "Coach",
          style: TextStyle(
            color: Color(0xFF808697),
            fontSize: 18,
          ),
        ),
        const Padding(padding: EdgeInsets.all(4.0)),
        const Text(
          "Pep Guardiola",
          style: TextStyle(
            color: Color(0xFF808697),
            fontSize: 14,
          ),
        ),
        const Padding(padding: EdgeInsets.all(3.0)),
        Image.asset(
          "assets/images/Image.png",
          height: 45,
          width: 45,
        )
      ]
    );
  }
}
