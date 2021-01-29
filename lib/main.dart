import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphx/graphx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universo Flutter | To find news and knowledge about Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme.copyWith(
                headline2: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                headline3: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SceneBuilderWidget(
            builder: () => SceneController(back: Background()),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Coming soon...\n',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'You can follow updates in Twitter and Telegram',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    '@universoflutter',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
        fit: StackFit.expand,
      ),
    );
  }
}

class Background extends Sprite {
  double get sw => stage.stageWidth;
  double get sh => stage.stageHeight;

  @override
  void addedToStage() {
    stage.color = 0xff212121;
    stage.maskBounds = true;
    _buildStars();
  }

  void _buildStars() {
    var bigSize = sw >= sh ? sw : sh;
    var bg = Shape();
    addChild(bg);
    final g = bg.graphics;
    g.beginFill(0x0).drawCircle(sw / 2, sh / 2, bigSize).endFill();

    /// generate stars
    List.generate(bigSize.toInt() * 2, (index) {
      var tx = Math.randomRange(0, bigSize * 2);
      var ty = Math.randomRange(0, bigSize * 2);
      var tr = Math.randomRange(1, 3);

      /// random blue shade
      final blue = Math.randomRangeInt(125, 255);
      final color = Color.fromARGB(255, blue, blue, 255);
      g.beginFill(color.value, Math.randomRange(.25, 1));
      g.drawStar(tx, ty, 8, tr);
      g.endFill();
    });

    /// tween animation
    void _twnBg() {
      bg.tween(
        duration: 8,
        scale: bg.scale < 1 ? 1.2 : 1,
        rotation: '.4',
        skewX: Math.randomRange(-.1, .1),
        ease: GEase.linear,
        onComplete: _twnBg,
      );
    }

    bg.alignPivot();
    bg.setPosition(sw / 2, sh / 2);
    _twnBg();
  }
}
