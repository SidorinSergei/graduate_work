import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduate_work/constants/constants.dart';
import 'package:graduate_work/view/widget/widget_style.dart';

class PageHome extends StatefulWidget {
  PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  WidgetStyle style = WidgetStyle();
  Constants constants = Constants();
  TextEditingController textEditingController = TextEditingController();

  // Список для хранения URL-адресов изображений (замените их на фактические URL-адреса ваших изображений)
  List<String> imageUrls = [
    'url1',
    'url2',
    'url3',
    'url4',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: style.gradient(),
      alignment: Alignment.center,
      padding: EdgeInsets.all(40),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Введите текст',
                  ),
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  // Добавьте здесь код для обработки нажатия на кнопку "Добавить фото"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFDF76FA),
                  maximumSize: Size(120, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Icon(Icons.add_a_photo_outlined),
              ),
            ],
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE492F6),
              minimumSize: Size(screenHeight, 35),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: (){
              // Действие, которое будет выполнено при нажатии кнопки
              String enteredText = textEditingController.text;
              // Добавьте здесь код для обработки введенного текста
              print(enteredText);
            },
            child: Text('Сгенерировать'),
          ),
          SizedBox(height: 10,),
          // GridView для отображения изображений
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 изображения в строке
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Image.network(imageUrls[index]);
            },
          ),
        ],
      ),
    );
  }
}
