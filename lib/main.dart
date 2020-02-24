import 'package:flutter/material.dart';
import 'parallax_component.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter image scroll parallax',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ParallaxPage(),
    );
  }
}

class ParallaxPage extends StatefulWidget {
  @override
  _ParallaxPageState createState() => _ParallaxPageState();
}

class _ParallaxPageState extends State<ParallaxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParallaxImage(
        height: 350,
        image: NetworkImage(
            'http://4xmen.ir/images/Nasir_al-_mulk_mosque,_Shiraz_iran.jpg'),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Text(
                'The Nasir al-Mulk Mosque (Persian: مسجد نصیر الملک‎ Masjed-i Nasir al-Mulk), also known as the Pink Mosque (مسجد صورتی Masjed-i Surati), is a traditional mosque in Shiraz, Iran. It is located in Gawd-i Arabān quarter, near Shāh Chérāgh Mosque. It was built during Qajar dynasty rule of Iran. \n The mosque includes extensive coloured glass in its facade, and displays other traditional elements such as the Panj Kāse ("five concaved") design. It is named in popular culture as the Pink Mosque,[1] due to the usage of a considerable number of pink-colored tiles for its interior design',
              ),
              Text(
                'Although stained glass is mostly popular in churches nowadays, the earliest discovered was in Syria from the 7th century. We do have evidence of techniques and recipes for obtaining stained glass by the Arabic chemist Jabir ibn Hayyan in his book Kitab al-Durra al-maknuna (The Book of the Hidden Pearl) published in the eighth century CE [6]. Orsi windows are windows made of a mixture of wood and colorful glass in the Safavid and the Qajar dynasties. Orsi differs from stained glass used in many churches and Ottoman mosques which serve as illuminated images rather than a source of light. Light is a major feature in many mosques considering it being a major symbol of God in Islam. This is mentioned in a chapter in Quran:″Allah is the light of the heavens and the earth″[7] \n \n Orsi in Nasir al Molk mosque creates a major definitive feature that makes up the colorful spiritual feeling of awe in the visitor when entering. The main purpose of Orsi is creating colorful light on the interior of the building. The mosque has seven wooden doors with colorful Orsi connecting the interior mosque to the courtyard. Orsi windows are characterized for using geometric shapes in their designs due to the prohibition of images and icons in islamic art [8]. ',
              ),
              Text(
                'The mosque was built during the Qajar dynasty, and is still in use under protection by the Endowment Foundation of Nasir al Molk. Construction began in 1876 by the order of the late Hassan Ali Nasir al-Molk, one of the lords and aristocrats of Shiraz, the son of Mirza Ali Akbar Qavam-ol-Molk, the ruler of Fars and was completed in 1888. The designers were Mohammad Hasan-e-Memār, an Iranian architect who had also built the famous Eram Garden before the Nasir al-Molk Mosque, Mohammad Hosseini Shirazi, and Mohammad Rezā Kāshi-Sāz-e-Širāzi.[3]',
              )
            ],
          ),
        ),
      ),
    );
  }
}
