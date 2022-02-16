import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavigationBarItens = [
  BottomNavigationBarItem(
    icon: Image.asset("images/feather_target/Icon feather-target.png"),
    label: "Atividades",
  ),
  BottomNavigationBarItem(
    icon: Image.asset("images/github/Icon awesome-github.png"),
    label: "Repositório",
  ),
  const BottomNavigationBarItem(
    icon: Icon(
      Icons.person,
      color: Colors.white,
    ),
    label: "Sobre o Dev",
  ),
];
