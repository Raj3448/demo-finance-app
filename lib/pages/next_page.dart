import 'package:demoapp/components/custom_box_decoration.dart';
import 'package:demoapp/components/custom_button_component.dart';
import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0, 0.7),
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.grey,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: commonBoxDecoration(
                                  color: Colors.cyan,
                                  offset: const Offset(0, 0),
                                  borderWidth: 0,
                                  borderRadius: 4),
                            ),
                            title: const Text('hey'),
                            subtitle: const Text(
                              'John!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: const Text(
                              '1273817@curiyesbank',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: 330,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: commonBoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: commonBoxDecoration(
                                color: const Color(0xFFCCCCF4),
                                boxShape: BoxShape.circle,
                                offset: const Offset(1, 1)),
                            child: const Center(
                              child: Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '22,222',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All time gain',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$ 2,442',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Past 1-yr CAGR:',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '8.5%',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAnimatedButton(
                        backgroundColor: Colors.green,
                        text: 'Add money',
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                        onTap: () {},
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        offset: const Offset(3, 3),
                      ),
                      const SizedBox(width: 30),
                      CustomAnimatedButton(
                        backgroundColor: const Color(0xFFCCCCF4),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                        text: 'Scan & pay',
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        offset: const Offset(3, 3),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomAnimatedButton(
                          borderRadius: BorderRadius.circular(20),
                          height: 80,
                          offset: const Offset(7, 7),
                          icon: const Icon(Icons.account_balance),
                          backgroundColor: const Color(0xFFCCCCF4),
                          text: 'SetUp SIP',
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: CustomAnimatedButton(
                          borderRadius: BorderRadius.circular(20),
                          height: 80,
                          icon: const Icon(Icons.dataset_linked_rounded),
                          offset: const Offset(7, 7),
                          backgroundColor: const Color(0xFFCCCCF4),
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          text: 'Linked bank account',
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Curie\'s Knowledge bank',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) => Container(
                            width: 150,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.amber),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Transition',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership_sharp),
            label: 'Debit Card',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
