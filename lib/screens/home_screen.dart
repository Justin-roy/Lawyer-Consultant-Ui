import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawyer_consultant/components/category_card.dart';
import 'package:lawyer_consultant/components/lawyer_card.dart';
import 'package:lawyer_consultant/components/search_bar.dart';
import 'package:lawyer_consultant/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: const Color(0xff2596be),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/icons/profile.svg'),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Find Your Desired\nLawyer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: kTitleTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SearchBar(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTitleTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildCategoryList(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Top Lawyers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTitleTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildLawyerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Divorce\nCase',
            'assets/icons/divorce.png',
            kBlueColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Murder\nCase',
            'assets/icons/murder.png',
            kYellowColor,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Physical Assault\nCase',
            'assets/icons/physical_assault.png',
            kOrangeColor,
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildLawyerList() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          LawyerCard(
            'Adv. Stella Kane',
            'Case Specialist',
            'assets/lawyerImg/lawyer1.png',
            kBlueColor,
          ),
          const SizedBox(
            height: 20,
          ),
          LawyerCard(
            'Adv. Joseph Cart',
            'Case Specialist',
            'assets/lawyerImg/lawyer2.png',
            kYellowColor,
          ),
          const SizedBox(
            height: 20,
          ),
          LawyerCard(
            'Adv. Stephanie',
            'Case Specialist',
            'assets/lawyerImg/lawyer3.png',
            kOrangeColor,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
