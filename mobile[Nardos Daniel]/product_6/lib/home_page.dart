import 'package:flutter/material.dart';

import 'data.dart';
import 'detail_page.dart';
import 'shoe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/img1.jpg',
                    width: 40.0,
                    height: 50.0,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Column(
                  children: [
                    Text('July 14,2023',
                        style: TextStyle(fontWeight: FontWeight.w400)),
                    Text(
                      'Hello, Yohannes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 150.0,
          ),
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      const Icon(Icons.notifications_none_rounded),
                      Positioned(
                          top: 3,
                          right: 5,
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 63, 81, 243)),
                          ))
                    ]),
                  ))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Available Products',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.countryName),
                ),
                Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/search');
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Searchpage()));
                        },
                        splashColor: Colors.grey.shade300,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search_outlined,
                            color: Colors.black45,
                          ),
                        ))),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.3,
                ),
                itemCount: Shoes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () => {
                        Navigator.pushNamed(context, Detailspage.routeName,
                            arguments: Shoe(
                                name: Shoes[index].name,
                                image: Shoes[index].image,
                                price: Shoes[index].price,
                                size: Shoes[index].size))
                       
                      },
                      splashColor: Colors.indigoAccent.shade400,
                      child: Column(
                        children: [
                          Flexible(
                              child: FractionallySizedBox(
                                  widthFactor: 1.0,
                                  heightFactor: 0.95,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                    child: Image.asset(
                                      Shoes[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ))),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Shoes[index].name,
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\$${Shoes[index].price}',
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Men's shoe",
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.black45),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[700],
                                    ),
                                    const Text(
                                      '(4.0)',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black45),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.indigoAccent.shade400,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
