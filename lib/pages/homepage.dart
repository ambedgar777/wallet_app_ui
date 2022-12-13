import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/main.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_card.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Page Controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on,
        size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
      /*bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home,
                size: 32,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings,
                size: 32,),
              ),
            ],
          ),
        ),
      ),*/
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            //AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            //PageView --> cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 2523.2,
                    cardNumber: 1234567890,
                    expiryMonth: 10,
                    expiryYear: 25,
                    color: Colors.deepPurple.shade300,
                  ),
                  MyCard(
                    balance: 342.2,
                    cardNumber: 1234567890,
                    expiryMonth: 5,
                    expiryYear: 22,
                    color: Colors.blue.shade300,
                  ),
                  MyCard(
                    balance: 343.2,
                    cardNumber: 1234567890,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.green.shade300,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(height: 40),

            //Buttons || Send + Pay + Bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButtons(
                      buttonText: 'Send',
                      iconImagePath: 'assets/icons/send-money.png'),
                  //pay button
                  MyButtons(
                      buttonText: 'Pay', iconImagePath: 'assets/icons/pay.png'),
                  //bill button
                  MyButtons(
                      buttonText: 'bill',
                      iconImagePath: 'assets/icons/bill.png'),
                ],
              ),
            ),

            SizedBox(height: 40),
            //column Transaction and History
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MyListTile(
                      iconImagePath: 'assets/icons/statistics.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payments and Income'),
                  MyListTile(
                      iconImagePath: 'assets/icons/transaction.png',
                      tileTitle: 'Transaction',
                      tileSubTitle: 'Transaction History')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
