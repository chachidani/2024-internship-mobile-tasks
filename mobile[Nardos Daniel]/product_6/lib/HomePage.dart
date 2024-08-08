import 'package:flutter/material.dart';
import 'package:product_6/DetailsPage.dart';
import 'package:product_6/SearchPage.dart';
import 'package:product_6/data.dart';
import 'package:product_6/shoe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/img1.jpg',
                    width: 40.0,
                    height: 50.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
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
          SizedBox(
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
                      Icon(Icons.notifications_none_rounded),
                      Positioned(
                          top: 3,
                          right: 5,
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 63, 81, 243)),
                          ))
                    ]),
                  ))),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.black45,
                            ),
                          ))),
                ],
              ),
            ),
            SizedBox(
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             Detailspage(shoes: Shoes[index])))
                      },
                      splashColor: Colors.indigoAccent.shade400,
                      child: Column(
                        children: [
                          Flexible(
                              child: FractionallySizedBox(
                                  widthFactor: 1.0,
                                  heightFactor: 0.95,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                    child: Image.asset(
                                      Shoes[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ))),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Shoes[index].name,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${Shoes[index].price}',
                                  style: TextStyle(
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
                                Text(
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
                                    Text(
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
        onPressed: () {},
        backgroundColor: Colors.indigoAccent.shade400,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
