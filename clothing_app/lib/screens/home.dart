import 'package:clothing_app/models/clothes.dart';
import 'package:clothing_app/widgets/clothes_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}
class _HomeState extends State<Home>{
  List<Clothes> clothes=[];
  @override
  void initState() {
    super.initState();
    clothes.add(Clothes(id: 1, img: "https://image.hm.com/assets/hm/f3/b4/f3b4c4adb1aab22ec2d11c8e6af7c4e4eebd4912.jpg?imwidth=384", name: "Regular Fit Shirt", price: 1700,description:"Available in black color." ));
    clothes.add(Clothes(id: 2, img: "https://image.hm.com/assets/hm/6a/18/6a18242a4758873a3a6a83f0ea407340b0e6335c.jpg?imwidth=384", name: "Regular Fit Wool-Blend Sweater", price: 3800,description: "Available in black and soft cream shades."));
    clothes.add(Clothes(id: 3, img: "https://image.hm.com/assets/hm/7a/22/7a22d91157a3a9c37a57f681a9a325a5f4ccea86.jpg?imwidth=384", name: "THERMOLITE® Loose Fit Half-zip Sweatshirt", price: 1800,description: "Available in light blue and dark green colors."));
    clothes.add(Clothes(id: 4, img: "https://image.hm.com/assets/hm/81/f3/81f31d2bf1c5a31cb9f6d76189d50e355a63d8dc.jpg?imwidth=384", name: "Regular Fit Corduroy Pants", price: 4500,description: "Available in black and soft cream shades."));
    clothes.add(Clothes(id: 5, img: "https://image.hm.com/assets/hm/81/f3/81f31d2bf1c5a31cb9f6d76189d50e355a63d8dc.jpg?imwidth=384", name: "Regular Fit Corduroy Pants", price: 4500,description: "Available in black and soft cream shades."));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("211095", style: TextStyle(color: Colors.white, fontSize: 32,fontStyle: FontStyle.italic)),
          centerTitle: true,

      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(15),
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          childAspectRatio: 0.5,

        physics: const BouncingScrollPhysics(),
          children: clothes.map((clothes)=>ClothesCard(clothes: clothes)).toList(),

      ),
    );
  }



}