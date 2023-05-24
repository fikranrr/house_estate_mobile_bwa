import 'package:flutter/material.dart';
import 'package:house_estate_mobile/model/cities.dart';
import 'package:house_estate_mobile/model/kategori.dart';
import 'package:house_estate_mobile/model/staff.dart';
import 'package:house_estate_mobile/theme.dart';
import 'package:house_estate_mobile/widgets/agent_card.dart';
import 'package:house_estate_mobile/widgets/bottom_navbar_item.dart';
import 'package:house_estate_mobile/widgets/cities_card.dart';
import 'package:house_estate_mobile/widgets/kategori_card.dart';
import 'package:house_estate_mobile/widgets/staff_card.dart';

import 'model/agent.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Estate',
                        style: blackTextStyle.copyWith(fontSize: 24),
                      ),
                      Text(
                        'Best discovery ever',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/notif.png',
                    width: 60,
                    height: 60,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Categories',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Container(
                width: 50,
                height: 74,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    KategoriCard(
                      Kategori(
                        id: 1,
                        name: 'Hutan',
                        imageUrl: 'assets/hutan.png',
                        isActive: false,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    KategoriCard(
                      Kategori(
                        id: 2,
                        name: 'Toko',
                        imageUrl: 'assets/bag.png',
                        isActive: false,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    KategoriCard(
                      Kategori(
                        id: 3,
                        name: 'Gudang',
                        imageUrl: 'assets/truk.png',
                        isActive: true,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    KategoriCard(
                      Kategori(
                        id: 4,
                        name: 'Hujan',
                        imageUrl: 'assets/awa.png',
                        isActive: false,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    KategoriCard(
                      Kategori(
                        id: 5,
                        name: 'Office',
                        imageUrl: 'assets/koper.png',
                        isActive: false,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    KategoriCard(
                      Kategori(
                        id: 6,
                        name: 'Jungle',
                        imageUrl: 'assets/hutan.png',
                        isActive: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Staff Picks',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 200,
              height: 181,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                StaffCard(
                  Staff(
                    id: 1,
                    name: 'Lagon Sky',
                    imageUrl: 'assets/staff1.png',
                    price: '\$920',
                    feat: '412 sq ft.',
                    isActive: true,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                StaffCard(
                  Staff(
                    id: 2,
                    name: 'Inn Parapatt',
                    imageUrl: 'assets/staff2.png',
                    price: '\$15.000',
                    feat: '800 sq ft.',
                    isActive: false,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Best Agents',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 90,
              height: 120,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                AgentCard(
                  Agent(
                      id: 1,
                      name: 'Satthu',
                      imageUrl: 'assets/agent1.png',
                      sold: '1902 sold'),
                ),
                AgentCard(
                  Agent(
                      id: 2,
                      name: 'Isy Mana',
                      imageUrl: 'assets/agent2.png',
                      sold: '839 sold'),
                ),
                AgentCard(
                  Agent(
                      id: 3,
                      name: 'Luph',
                      imageUrl: 'assets/agent3.png',
                      sold: '422 sold'),
                ),
                AgentCard(
                  Agent(
                      id: 1,
                      name: 'Satthu',
                      imageUrl: 'assets/agent1.png',
                      sold: '1902 sold'),
                ),
              ]),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Cities',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 327,
              child: Column(children: [
                CitiesCard(
                  Cities(
                    id: 1,
                    name: 'Jakarta Selatan',
                    imageUrl: 'assets/city1.png',
                    property: '194 property',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                CitiesCard(
                  Cities(
                    id: 2,
                    name: 'Bandung',
                    imageUrl: 'assets/city2.png',
                    property: '89,400 property',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                CitiesCard(
                  Cities(
                    id: 3,
                    name: 'Denpasar',
                    imageUrl: 'assets/city3.png',
                    property: '184,000 property',
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 70 + edge,
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 75,
        width: MediaQuery.of(context).size.width - (3 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavbarItem(
                name: 'Discover',
                imageUrl: 'assets/icon_home.png',
                isActive: true,
              ),
              BottomNavbarItem(
                name: 'Favorites',
                imageUrl: 'assets/icon_heart.png',
                isActive: false,
              ),
              BottomNavbarItem(
                name: 'TV News',
                imageUrl: 'assets/icon_tv.png',
                isActive: false,
              ),
              BottomNavbarItem(
                name: 'Settings',
                imageUrl: 'assets/icon_setting.png',
                isActive: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
