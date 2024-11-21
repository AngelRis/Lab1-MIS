import 'package:clothing_app/models/clothes.dart';
import 'package:clothing_app/widgets/clothes_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesDetails extends StatelessWidget{
  const ClothesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Clothes clothes=ModalRoute.of(context)!.settings.arguments as Clothes;
    return Scaffold(
      body: ClothesDetailsWidget(clothes: clothes),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton:FloatingActionButton.extended(onPressed:()=> Navigator.pop(context), label: const Text("Back"),icon: const Icon(Icons.arrow_back)),
    );
  }

}