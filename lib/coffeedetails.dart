import 'package:flutter/material.dart';

class CoffeeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96.0),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: "Sora",
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/heart.jpg",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Image.asset(
                    "assets/images/rectangle.jpg",
                    scale: 0.85,
                  ),
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: MenuItem(
                      description: "With Chocolate",
                      foodItem: "Cappuccino",
                      rating: 4.8,
                      quantity: 230,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 80),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 241, 241),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/bean.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 241, 241),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/milk.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.black.withOpacity(0.25),
                  thickness: 3,
                  height: 50,
                ),
              ),
              const DescriptionSection(
                  description:
                      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk the fo"),
              const SizeSection(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 145,
          elevation: 0,
          shadowColor: Colors.black.withOpacity(0.2),
          child: Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: CheckoutSection(
                price: "\$ 4.53",
                button: RoundedButton(
                    text: "Buy Now",
                    textColor: Colors.white,
                    buttonColor: Color.fromARGB(255, 211, 133, 31),
                    fontSize: 19.5,
                    borderColor: Color.fromARGB(255, 211, 133, 31),
                    height: 100)),
          ),
        ));
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.description,
      required this.foodItem,
      required this.quantity,
      required this.rating});

  final String foodItem;
  final String description;
  final double rating;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodItem,
                style: const TextStyle(
                    fontFamily: "Sora",
                    fontWeight: FontWeight.bold,
                    fontSize: 23.5),
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                    fontFamily: "Sora",
                    color: Colors.black.withOpacity(0.25),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 233, 183, 57),
                    size: 28.0,
                  ),
                  Text(
                    "$rating",
                    style: const TextStyle(
                        fontFamily: "Sora",
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "($quantity)",
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.25),
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 360,
          child: Text(
            "Description",
            style: TextStyle(
                fontFamily: "Sora", fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          width: 360,
          child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(children: [
                TextSpan(
                  text: "$description..",
                  style: TextStyle(
                      fontFamily: "Sora",
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.45),
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: "Read More",
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 18,
                        color: Color.fromARGB(255, 211, 133, 31),
                        fontWeight: FontWeight.bold))
              ])),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

class SizeSection extends StatelessWidget {
  const SizeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Size",
            style: TextStyle(
                fontFamily: "Sora", fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Expanded(
                  child: RoundedButton(
                      height: 50.0,
                      fontSize: 15,
                      text: "S",
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      borderColor: Colors.grey)),
              Expanded(
                  child: RoundedButton(
                      height: 50.0,
                      fontSize: 15,
                      text: "M",
                      textColor: Colors.black,
                      buttonColor: Colors.pink.shade50,
                      borderColor: Color.fromARGB(226, 221, 176, 54))),
              const Expanded(
                  child: RoundedButton(
                      height: 50.0,
                      fontSize: 15,
                      text: "L",
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      borderColor: Colors.grey)),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.buttonColor,
      required this.borderColor,
      required this.height,
      required this.fontSize});

  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: textColor,
            side: BorderSide(color: borderColor),
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
          child: Text(text,
              style: TextStyle(
                  color: textColor,
                  fontFamily: "Sora",
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({super.key, required this.price, required this.button});

  final String price;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 25, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.25),
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                )
              ],
            ),
          ),
          Expanded(child: button),
        ],
      ),
    );
  }
}
