import 'package:first_app/configuration.dart';
import 'package:flutter/material.dart';

class TabViewScreen extends StatefulWidget {
  @override
  _TabViewScreenState createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> {
  Widget topPart() {
    return Container(
        height: 50, //высота серого овала
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.all(5.0), //размер зеленого овала
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
        ));
  }

  Widget listCategories() {
    return Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 76,
                        width: 56,
                        margin: EdgeInsets.only(left: 30),
                        child: Column(children: [
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: customShadow,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              width: 16,
                              height: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: Text(
                              categories[index]['name'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12, color: Colors.grey[400]),
                          ))
                        ]));
                  },
                ),
              );
  }

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
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 15), //отспуп 15 между элементами
              topPart(),
              SizedBox(height: 15),
              listCategories(),
              SizedBox(
                  height: 20,
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
