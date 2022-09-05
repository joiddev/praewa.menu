
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

List<List<dynamic>> foodLists = [
  [
    "https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/00/a0000450/img/basic/a0000450_main.jpg?20170429125322&q=80&rw=750&rh=536",
    "Pizza",
    279
  ],
  [
    "https://img-global.cpcdn.com/recipes/7999f27d65ba67c1/1200x630cq70/photo.jpg",
    "Korean fried chicken",
    209
  ],
  [
    "https://static.posttoday.com/media/content/2018/11/28/809833FC1C0A47E58125BB86B868D0B7.png",
    "French fries",
    139
  ],
  [
    "https://cms.kapook.com/uploads/tag/22/ID_21763_590051e97e8d1.jpg",
    "Cheese ball",
    99
  ],
  ["https://www.unileverfoodsolutions.co.th/dam/global-ufs/mcos/SEA/calcmenu/recipes/TH-recipes/red-meats-&-red-meat-dishes/%E0%B8%8A%E0%B8%B5%E0%B8%AA%E0%B9%80%E0%B8%9A%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B9%80%E0%B8%81%E0%B8%AD%E0%B8%A3%E0%B9%8C/%E0%B8%8A%E0%B8%B5%E0%B8%AA%E0%B9%80%E0%B8%9A%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B9%80%E0%B8%81%E0%B8%AD%E0%B8%A3%E0%B9%8C_header.jpg",
   "Cheeseburger",
   179
  ],
  ["https://img.wongnai.com/p/624x0/2021/01/28/6fa9fcbadcce4b659d3e6db97b172cc9.jpg",
  "Corn Dog",
  159
  ],
  ["https://d1sag4ddilekf6.azureedge.net/compressed_webp/items/THITE2020111714341862408/detail/menueditor_item_b1b1f5ac6e984025bc77c4e95134fd3a_1605623523286915003.webp",
  "Kebub",
  79
  ],

];

@override
Widget build(BuildContext context) {
  return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index) {
        return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Container(
                height: 100,
                width: double.infinity,
                child: Stack(children: [
                  Row(children: [
                    Image.network(
                      "${foodLists[index][0]}",
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${foodLists[index][1]}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${foodLists[index][2]} ฿",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  alignment: Alignment.bottomRight,
                                  child: Chip(
                                    backgroundColor: Colors.pink,
                                    label: Text(
                                      "สั่งสิ มองอยู่ได้",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ))),
                  ]),
                ])));
      });
}
}