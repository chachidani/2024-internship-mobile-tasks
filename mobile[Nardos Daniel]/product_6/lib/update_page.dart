import 'package:flutter/material.dart';
import 'package:product_6/data.dart';
import 'package:product_6/shoe.dart';

class UpDate extends StatefulWidget {
  const UpDate({super.key, required this.shoes});
  final Shoe shoes;
  static const routeName = '/detail/update';

  @override
  State<UpDate> createState() => _UpDateState();
}

class _UpDateState extends State<UpDate> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController catagoryController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.indigoAccent.shade400,
            )),
        title: const Text(
          'Update Product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Card(
                    color: Color.fromARGB(169, 248, 244, 244),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('upload image')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'name',
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: widget.shoes.name,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'category',
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: catagoryController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'price',
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: priceController,
                decoration: InputDecoration(
                  hintText: widget.shoes.price.toString(),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'description',
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: descriptionController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color.fromARGB(169, 216, 213, 213),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent.shade400,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(double.maxFinite, 50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () => {_add()},
                  child: const Text('UPDATE',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              const SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(230, 255, 19, 19),
                    fixedSize: const Size(double.maxFinite, 50),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
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
            ],
          ),
        ),
      ),
    );
  }

  void _add() {
    int ind = Shoes.indexOf(widget.shoes);
    if (ind != -1) {
      Shoes[ind] = Shoe(
          name: nameController.text,
          image: Shoes[ind].image,
          price: double.parse(priceController.text),
          size: Shoes[ind].size);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Column(
          children: [
            const Text('Updated Successfully'),
            TextButton(
                onPressed: () => {Navigator.of(context).pushNamed("/")},
                child: const Text("Go to home page"))
          ],
        )),
      );

      _formKey.currentState!.reset();
      nameController.clear();
      priceController.clear();
      catagoryController.clear();
      descriptionController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Column(
          children: [
            const Text('Failed to update'),
            TextButton(
                onPressed: () => {Navigator.of(context).pushNamed("/")},
                child: const Text("Go to home page"))
          ],
        )),
      );
    }
  }
}
