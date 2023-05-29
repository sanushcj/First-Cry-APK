import 'package:first_cry_ui/theme/theme.dart';
import 'package:flutter/material.dart';

AppBar myappbar = AppBar(
  title: const Text(
    'firstcry.com',
    style: TextStyle(fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
  ),
  foregroundColor: Pallete.amoledBlack,
  actions: [
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        // Handle search icon press
      },
    ),
    IconButton(
      icon: const Icon(Icons.favorite),
      onPressed: () {
        // Handle favorite icon press
      },
    ),
    IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        // Handle shopping cart icon press
      },
    ),
  ],
);
