import 'package:coffee_ui/utilities/coffietype.dart';
import 'package:coffee_ui/utilities/cofieetile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Find the best coffee for you',
                style: GoogleFonts.bebasNeue(fontSize: 55),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'Find your coffee..',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  typecoffee(
                    coffeetype: 'Cappcuino',
                    isselected: true,
                  ),
                  typecoffee(
                    coffeetype: 'Lattee',
                    isselected: false,
                  ),
                  typecoffee(
                    coffeetype: 'Black',
                    isselected: false,
                  ),
                  typecoffee(coffeetype: 'Tea', isselected: false)
                ],
              ),
              //   color: Colors.red,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  tile(
                      coffeedescription: 'with almond milk',
                      coffeename: 'Lattee',
                      coffeeprice: '4.00',
                      coffeimage: 'lib/images/img2.jpg'),
                  tile(
                      coffeedescription: 'Black tea',
                      coffeename: 'Black',
                      coffeeprice: '5.00',
                      coffeimage: 'lib/images/img3.jpg'),
                  tile(
                      coffeedescription: 'Regular',
                      coffeename: 'Tea',
                      coffeeprice: '3.00',
                      coffeimage: 'lib/images/img4.jpg'),
                ],
              ),
            )
          ],
        ));
  }
}
