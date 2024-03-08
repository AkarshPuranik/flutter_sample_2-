
    import 'package:flutter/material.dart';
    import 'package:soybeaan_icrc/blue_beetle.dart';
    import 'package:soybeaan_icrc/ContentPage.dart';
    import 'package:soybeaan_icrc/inscetscont/Brown.dart';
    import 'package:soybeaan_icrc/inscetscont/White.dart';
    import 'package:soybeaan_icrc/inscetscont/bihar.dart';
    import 'package:soybeaan_icrc/inscetscont/girdle.dart';
    import 'package:soybeaan_icrc/inscetscont/gram.dart';
    import 'package:soybeaan_icrc/inscetscont/green.dart';
    import 'package:soybeaan_icrc/inscetscont/grub.dart';
    import 'package:soybeaan_icrc/inscetscont/leaff.dart';
    import 'package:soybeaan_icrc/inscetscont/miner.dart';
    import 'package:soybeaan_icrc/inscetscont/stemfly.dart';
    import 'package:soybeaan_icrc/inscetscont/stink.dart';

    class SoyInsect extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContentPage(),
                  ),
                );
              },
            ),
            title: const Text('Insect Management'),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  _buildInsectItem(
                    context,
                    'Blue Beetle',
                    'assets/images/blue.jpeg',
                    BlueBeetle(),
                  ),
                  _buildInsectItem(
                    context,
                    'Bihar Caterpillar',
                    'assets/images/bihar.jpeg',
                    Bihar(),
                  ),
                  _buildInsectItem(
                    context,
                    'Girdle Beetle',
                    'assets/images/girdle.png',
                    Girdle(),
                  ),
                  _buildInsectItem(
                    context,
                    'Gram Pod Borer',
                    'assets/images/gram.jpeg',
                    Gram(),
                  ),
                  _buildInsectItem(
                    context,
                    'Green Semiloopers',
                    'assets/images/semilooper.png',
                    Green(),
                  ),
                  _buildInsectItem(
                    context,
                    'Green Stink Bug',
                    'assets/images/green.jpg',
                    Stink(),
                  ),
                  _buildInsectItem(
                    context,
                    'Leaf Folder',
                    'assets/images/leaff.jpg',
                    Leaff(),

                  ),
              _buildInsectItem(
                context,
                'White Fly',
                'assets/images/white.jpg',
                White(),
              ),
              _buildInsectItem(
                context,
                'Stem Fly',
                'assets/images/stemfly.jpg',
               Stem(),


              ),
              _buildInsectItem(
                context,
                'Leaf Miner',
                'assets/images/miner.jpg',
                Miner(),
              ),
              _buildInsectItem(
                context,
                'Tobacco Caterpillar',
                'assets/images/tobacco.jpg',
               Miner (),

              ),
              _buildInsectItem(
              context,
              'White Grub',
              'assets/images/grub.jpg',
              Grub (),
            ),


              _buildInsectItem(
                context,
                'Brown Stripped Semilooper',
                'assets/images/brown.jpg',
                Brown (),






        ),
        ],

        ),

        ),

        )
        );

      }



      }

      Widget _buildInsectItem(
          BuildContext context, String title, String imagePath, Widget page) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      }
