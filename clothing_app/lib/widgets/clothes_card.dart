import 'package:clothing_app/models/clothes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesCard extends StatelessWidget{
  final Clothes clothes;
  const ClothesCard({super.key,required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(3),
        enableFeedback: true,
        splashColor: Colors.transparent,
        onTap: ()=>{
          Navigator.pushNamed(context, '/details',arguments:clothes)
        },
        child: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.1),width: 0.8),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Column(
            children: [
              Expanded(child: Image.network(clothes.img,fit: BoxFit.contain,alignment: Alignment.topCenter,)),
              Container(padding: const EdgeInsets.only(bottom: 10,left: 5,right: 5),child: Column(children: [
                Center(child: Text(clothes.name,style: const TextStyle(fontSize: 15.5,color: Colors.black54))),
                Center(child: Text("${clothes.price} MKD",style: const TextStyle(fontSize: 14,color: Colors.black87,fontWeight: FontWeight.bold))),
              ],),)
            ],
          ),
        ),
      ),
    );
  }

}