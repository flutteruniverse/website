import 'package:graphx/graphx.dart';

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
