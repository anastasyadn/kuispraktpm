import 'package:flutter/material.dart';

import 'package:kuispraktpm/rental_car.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rental Mobil"),
      ),
      body: ListView.builder(
          itemCount: rentalCar.length,
          itemBuilder: (context, index) {
            final RentalCar rent = rentalCar[index];

            return InkWell(
              onTap: () {
              },
              child: Container(
                height: 100,
                child: ListTile(
                  leading: Image.network(
                    rent.images[0],
                    width: 100,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Text(rent.brand + " " + rent.model,
                        style: TextStyle(fontStyle: FontStyle.italic)),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(rent.rentalPricePerDay + " / hari",
                        style: TextStyle(fontStyle: FontStyle.italic)),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
