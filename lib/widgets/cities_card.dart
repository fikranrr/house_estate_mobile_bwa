import 'package:flutter/material.dart';
import '../model/cities.dart';
import '../theme.dart';

class CitiesCard extends StatelessWidget {
  final Cities kat;

  CitiesCard(this.kat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: edge),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 90,
          width: 347,
          color: Color(0xFFFFFFFF),
          child: Row(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(13),
                  child: Image.asset(
                    kat.imageUrl,
                    width: 90,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kat.name,
                      style: blackTextStyle.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      kat.property,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
