import 'package:capuccino/coffeedetails.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;

  Widget buildcoffeecategory({categoryname, isSelected}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          Text(
            categoryname,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected
                  ? Color.fromARGB(255, 209, 120, 66)
                  : Color.fromARGB(255, 125, 119, 116),
            ),
          ),
          if (isSelected)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child:
                  Icon(Icons.coffee, color: Color.fromARGB(255, 209, 120, 66)),
            )
        ],
      ),
    );
  }

  Widget buildSingleItem({
    images,
    title,
    subtitle,
    context,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CoffeeDetails()));
      },
      child: Container(
          height: screenHeight * 0.4,
          width: screenWidth * 0.9 + 10,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 239, 198, 179),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3.5,
                              spreadRadius: 4.0,
                              color: Color.fromARGB(172, 154, 88, 42)),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 15, 15),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: Color.fromARGB(252, 11, 11, 11),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 0,
              ),
              // Code For Nav Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(235, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(235, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              // End of code for Navbar

              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Find our Best \nCoffee Here",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: TextField(
                  cursorColor: Color.fromARGB(194, 11, 11, 11),
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: Color.fromARGB(255, 68, 65, 65)),
                    hintText: "Find Your Coffee... ",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 68, 65, 65),
                    ),
                    fillColor: Color.fromARGB(255, 239, 198, 179),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildcoffeecategory(
                      categoryname: "Cappiccino",
                      isSelected: true,
                    ),
                    buildcoffeecategory(
                      categoryname: "Latte",
                      isSelected: false,
                    ),
                    buildcoffeecategory(
                      categoryname: "Espresso",
                      isSelected: false,
                    ),
                    buildcoffeecategory(
                      categoryname: "Kola",
                      isSelected: false,
                    ),
                    buildcoffeecategory(
                      categoryname: "Honey",
                      isSelected: false,
                    ),
                    buildcoffeecategory(
                      categoryname: "Energy ",
                      isSelected: false,
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    buildSingleItem(
                        context: context,
                        images: "assets/images/rectangle.jpg",
                        title: "Cappuccino",
                        subtitle: "With Honey"),
                    buildSingleItem(
                        context: context,
                        images: "assets/images/rectangle.jpg",
                        title: "Cappuccino",
                        subtitle: "With Milk"),
                    buildSingleItem(
                        context: context,
                        images: "assets/images/rectangle.jpg",
                        title: "Cappuccino",
                        subtitle: "Black and White"),
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
