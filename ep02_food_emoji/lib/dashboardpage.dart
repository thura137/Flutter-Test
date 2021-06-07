import 'package:ep02_food_emoji/foodtab.dart';
import 'package:ep02_food_emoji/itemdetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.black),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 5.0,
                            spreadRadius: 4.0,
                            offset: Offset(0.0, 3.0))
                      ],
                      // color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/man.png'),
                          fit: BoxFit.contain)),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('SEARCH FOR',
                  style: GoogleFonts.notoSans(
                      fontSize: 30, fontWeight: FontWeight.w800))),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('RECIPES',
                style: GoogleFonts.notoSans(
                    fontSize: 30, fontWeight: FontWeight.w800)),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.1),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Recommended',
                style: GoogleFonts.notoSans(
                    fontSize: 20, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildListItem('Hamburger', 'assets/hamburger.png', '24',
                    Color(0xFFFFE0CF), Colors.blue[800]),
                _buildListItem('Chips', 'assets/chip.png', '29',
                    Color(0xFFC2E3FE), Color(0xFF6A8CAA)),
                _buildListItem('Donuts', 'assets/donuts.png', '24',
                    Color(0xFFD7FADA), Color(0xFF56CC7E)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.9),
              labelStyle: GoogleFonts.notoSans(
                  fontSize: 17, fontWeight: FontWeight.w700),
              unselectedLabelStyle: GoogleFonts.notoSans(
                  fontSize: 15, fontWeight: FontWeight.w500),
              tabs: [
                Tab(
                  child: Text("FEATURE"),
                ),
                Tab(
                  child: Text("COMBO"),
                ),
                Tab(
                  child: Text("FAVORITES"),
                ),
                Tab(
                  child: Text("RECOMMENDED "),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 450,
            child: TabBarView(
              controller: tabController,
              children: [
                FoodTab(),
                FoodTab(),
                FoodTab(),
                FoodTab(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildListItem(String foodName, String imagePath, String price, Color bgColor,
      Color textColor) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          // todo
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ItemDetail(
                    foodName: foodName,
                    prePrice: price,
                    imagPath: imagePath,
                    heroTab: foodName,
                  )));
        },
        child: Container(
          height: 175,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: bgColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                  tag: foodName,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: Image.asset(
                        imagePath,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  )),
              SizedBox(
                height: 25,
              ),
              Text(
                foodName,
                style: GoogleFonts.notoSans(fontSize: 20, color: textColor),
              ),
              Text(
                '\$' + price,
                style: GoogleFonts.notoSans(fontSize: 19, color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
