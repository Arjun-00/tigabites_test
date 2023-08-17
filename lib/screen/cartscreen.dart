import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tigabites_test/provider/product_provider.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerPage = Provider.of<ProductProvider>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ListView.builder(
            itemCount: providerPage.myList.length,
            itemBuilder: (_,index){
              final cartList = providerPage.myList[index];
              return Card(
                elevation: 4,
                color: Colors.grey,
                child: ListTile(
                  title: Text(cartList.productName,style: const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(cartList.productPrice,style: const TextStyle(color: Colors.white)),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete,color: Colors.white,),
                    onPressed: (){
                      if(providerPage.myList.length == 1){
                        providerPage.removeCartItem(cartList);
                        Navigator.pop(context);
                      }else{
                        providerPage.removeCartItem(cartList);
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}