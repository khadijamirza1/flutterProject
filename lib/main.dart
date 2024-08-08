import 'package:flutter/material.dart';
import 'package:ordering_app/screen/home_screen.dart'; // استيراد HomeScreen
// استيراد WelcomeWidget
/*
تطبيق (HealthyPlate)
هو تطبيق يقدم الخدمات لكل من يرغب في تناول اطعمة صحية لأي هدف سواء تخفيض الوزن او بناء العضلات او لكبار السن و المرضى و غيره..بالتعاون مع الاسر المنتجه  القريبه من منزله او عمله بحيث اننا نقدم انظمة بالغة الدقه و تعليمات و وصفة  طهي محدده و مكتوبه بعناية بأيدي خبراء 
و يتم تصميم الانظمه لكل مشترك بالذكاء الصناعي ليلبي احتياجاته

ينقسم التطبيق الى تطبيقين احدهم موجه للمشتركين و فيه يجد المشترك تقييم الاسر المنتجه و آراء العملاء ليختار منها و كذلك يستطيع تنظيم مواقع استلام الوجبات واوقاتها بما يناسبه و شات خاص للاستفسارات و الملاحظات يشرف عليه اخصائيين تغذيه 
و الاخر خاص فقط للمسجلين من الاسر المنتجه التي استوفت الشروط الخاصه بالبرنامج و تحتوي على جميع الوصفات و شات للاستفسارات التي يشرف عليها اخصائيين تغذيه و نظام كل عميل و الملاحظات الخاصه به  مصممه بالذكاء الصناعي و تحت اشراف اخصائيين تغذيه و كذلك الموردين المعتمدين و شركات التوصيل


*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 74, 15, 86),
        centerTitle: true,
        title: const Text(
          "HealthyPlate",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/pic.jpg",
              height: 350,
              width: 350,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Enter Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // عند الضغط على زر "Join as Guest"
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Join as Guest",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // عند الضغط على زر "Next"
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 63, 15, 86),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.login,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
