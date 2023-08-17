import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:tigabites_test/provider/product_provider.dart';

import 'cartscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ProductProvider>(context, listen: false).fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    final providerPage = Provider.of<ProductProvider>(context);
    var productes = providerPage.getProductes;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tigabites"),
        centerTitle: true,
        actions: [
          ValueListenableBuilder(
            valueListenable: Hive.box('myBox').listenable(),
            builder: (context, Box box, _) {
              int storedValue = box.get('intValue', defaultValue: 0);
              return   Stack(
                alignment: Alignment.topRight,
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart,size: 30,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                    },
                  ),
                  if (providerPage.myList.isNotEmpty)
                    Positioned(
                      right: 1,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          storedValue.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black12,
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productes.length,
                itemBuilder: (_,index){
                  final currentProduct = productes[index];
                  return Card(
                    color: Colors.grey,
                    elevation: 4,
                    child: ListTile(
                      title: Text(currentProduct.productName,style: const TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(currentProduct.productPrice,style: const TextStyle(color: Colors.white)),
                      trailing: IconButton(
                        icon: Icon(Icons.add_box,size: 30,
                          color: providerPage.myList.contains(currentProduct)? Colors.redAccent: Colors.white,
                        ),
                        onPressed: (){
                          if(providerPage.myList.contains(currentProduct)){
                            providerPage.removeItems(currentProduct);
                          }else{
                            providerPage.addItem(currentProduct);
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}