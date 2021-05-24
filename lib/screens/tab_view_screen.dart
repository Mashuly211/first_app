import 'package:flutter/material.dart';

class TabViewScreen extends StatefulWidget {
  @override
  _TabViewScreenState createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //если указать 2, то выдает ошибку в таб, т.к. у нас 3
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Image.asset("assets/images/arrow.png"),
          title: Text(
            'Каталог',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 15), //отспуп 15 между элементами
              Container(
                  height: 50, //высота серого овала
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Color(0xFF42AB44), //активная кнопка зеленая
                        borderRadius: BorderRadius.circular(50),
                      ),
                      tabs: [
                        Tab(text: 'Продукты'),
                        Tab(text: 'Фермеры'),
                        Tab(text: 'Агротуры'),
                      ],
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                  )),
              SizedBox(height: 15),
              SizedBox(
                  height: 300,
                  child: TabBarView(
                    children: [
                      Container(child: Text('Все товары продуктов')),
                      Container(child: Text('Все товары фермеров')),
                      Container(child: Text('Все товары агротуров')),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
