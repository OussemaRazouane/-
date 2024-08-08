import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> tasbeh = [
  "سُبْحَانَ اللَّهِ",
  "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
  "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
  "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
  "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
  "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ",
  "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
  "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
  "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
  "أستغفر الله ",
  "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",
  "لَا إِلَهَ إِلَّا اللَّهُ",
  "الْلَّهُ أَكْبَرُ",
  "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.",
  "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ",
  "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.",
  "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ.",
  ];
  int index=0;
  int count=0;
  int round=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(fit:BoxFit.cover ,image: NetworkImage("https://i.pinimg.com/736x/49/27/c8/4927c872ba6515d4fe840b1aae29d2bb.jpg")),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width:MediaQuery.of(context).size.width/1.5 ,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color.fromARGB(203, 194, 170, 170),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed:(){
                      setState(() {
                        index--;
                        if(index<0) index=tasbeh.length-1;
                      });
                    },
                    icon: const Icon(Icons.arrow_back_ios_new,)
                  ),
                  Expanded(
                    child: Text(
                      tasbeh[index],
                      textAlign:TextAlign.center,
                      style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                    ),
                  ),
                  IconButton(
                    onPressed:(){
                      setState(() {
                        index++;
                        if(index>tasbeh.length-1) index=0;
                      });
                    },
                    icon: const Icon(Icons.arrow_forward_ios,),
                  ),
              ],),
            ),
            Text("$count/32",textAlign:TextAlign.center ,style:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 255, 255, 255),backgroundColor:Color.fromARGB(203, 194, 170, 170)) ,),
            Text("Round $round",textAlign:TextAlign.center ,style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 255, 255, 255),backgroundColor:Color.fromARGB(203, 194, 170, 170)) ,),
            OutlinedButton(
              onPressed: (){
                setState(() {
                  index=0;
                  count=0;
                  round=0;
                });
              }, 
              child:const Text("Reset",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Color.fromARGB(255, 255, 255, 255),backgroundColor:Color.fromARGB(203, 194, 170, 170))),
            ),
            GestureDetector(
              onTap:(){
                setState(() {
                  count++;
                  count = count%33;
                  if(count==0) round++;
                });
              },
              child:const CircleAvatar(
                radius:85,
                backgroundColor: Color.fromARGB(255, 36, 185, 151),
                child:Text("سبح",textAlign:TextAlign.center ,style:TextStyle(fontSize: 27, fontWeight: FontWeight.bold,) ,),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}