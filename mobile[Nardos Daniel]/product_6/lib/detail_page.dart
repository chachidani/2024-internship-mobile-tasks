import 'package:flutter/material.dart';

import 'data.dart';
import 'shoe.dart';
import 'update_page.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key, required this.shoes});
  final Shoe shoes;
  static const routeName = '/detail';
  void _delete(BuildContext context) {
    Shoes.remove(shoes);
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('deleted successfully ')));
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: Image.asset(
                    shoes.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 40, // Adjust based on your design
                left: 10, // Adjust based on your design
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  // color: Colors.white,
                  child: Center(
                    child: IconButton(
                      // color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.indigoAccent.shade400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Men's shoe",
                      style: TextStyle(fontSize: 15.0, color: Colors.black45),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                        const Text(
                          '(4.0)',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.black45),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        shoes.name,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$${shoes.price}',
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Size:',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 60,
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildSizeCard('39', shoes.size),
                      _buildSizeCard('40', shoes.size),
                      _buildSizeCard('41', shoes.size),
                      _buildSizeCard('42', shoes.size),
                      _buildSizeCard('43', shoes.size),
                      _buildSizeCard('44', shoes.size),
                      _buildSizeCard('45', shoes.size),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                    'A derby leather shoe is a classic and versatile footwear option characterized by its open lacing system, where the shoelace eyelets are sewn on top of the vamp (the upper part of the shoe). This design feature provides a more relaxed and casual look compared to the closed lacing system of oxford shoes. Derby shoes are typically made of high-quality leather, known for its durability and elegance, making them suitable for both formal and casual occasions. With their timeless style and comfortable fit, derby leather shoes are a staple in any well-rounded wardrobe.'),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        _delete(context);
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(230, 255, 19, 19),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 15.0),
                          side: const BorderSide(
                            color: Color.fromARGB(230, 255, 19, 19),
                            width: 1.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: const Text("DELETE",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.indigoAccent.shade400,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        onPressed: () => {
                              Navigator.pushNamed(context, UpDate.routeName,
                                  arguments: Shoe(
                                      name: shoes.name,
                                      image: shoes.image,
                                      price: shoes.price,
                                      size: shoes.size))
                            },
                        child: const Text('UPDATE',
                            style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildSizeCard(String size, String _size) {
  bool isSelected = false;
  if (size == _size) {
    isSelected = true;
  }
  return Container(
    color: isSelected ? Colors.indigoAccent.shade400 : Colors.white,
    width: 70,
    height: 60,
    child: Card(
      color: isSelected ? Colors.indigoAccent.shade400 : Colors.white,
      child: Center(
        child: Text(
          size,
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    ),
  );
}
