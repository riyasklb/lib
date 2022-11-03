import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class tile extends StatelessWidget {
  final String coffeename;
  final String coffeimage;
  final String coffeedescription;
  final String coffeeprice;
  const tile({
    required this.coffeedescription,
    required this.coffeename,
    required this.coffeeprice,
    required this.coffeimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, bottom: 50),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeimage),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                coffeename,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                coffeedescription,
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$   ' + coffeeprice),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.add))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
