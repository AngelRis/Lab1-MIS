import 'package:clothing_app/models/clothes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesDetailsWidget extends StatelessWidget{
  final Clothes clothes;


  const ClothesDetailsWidget({super.key,required this.clothes});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 40),
      child: Column(
          children: [
            Expanded(child: Image.network(clothes.img,fit: BoxFit.contain,alignment: Alignment.topCenter,)),
            Container(padding: const EdgeInsets.only(bottom: 10,left: 5,right: 5),child: Column(children: [
              Center(child: Text(clothes.name,style: const TextStyle(fontSize: 30,color: Colors.black54))),
              Text(clothes.description,style: const TextStyle(fontSize: 20,fontStyle:FontStyle.italic,color: Colors.brown)),
              Center(child: Text("${clothes.price} MKD",style: const TextStyle(fontSize: 22,color: Colors.black87,fontWeight: FontWeight.bold))),
            ],)
            ),
          ]
      ),
    );
  }

}