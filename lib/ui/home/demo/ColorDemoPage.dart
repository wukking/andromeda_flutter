import 'package:flutter/material.dart';

class ColorDemoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final palettes = _allPalettes(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Colors"
        ),
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            for(final i in palettes) Tab(text: i.name)
          ],
        ),
      ),
      body: TabBarView(
        children: [
          for(final i in palettes)
        ],
      )
    );
  }
}

const double kColorItemHeight = 48;

class _PaletteTabView extends StatelessWidget{
  const _PaletteTabView({required this.colors});

  final _Palette colors;
  static const primaryKeys = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];
  static const accentKeys = <int>[100, 200, 400, 700];

  @override
  Widget build(BuildContext context) {
      final textTheme = Theme.of(context).textTheme;
      final whiteTextStyle = textTheme.bodyText2!.copyWith(color: Colors.white);
      final blackTextStyle = textTheme.bodyText2!.copyWith(color: Colors.black);

      return Scrollbar(child: ListView(
        itemExtent: kColorItemHeight,
        children: [
          for (final key in primaryKeys)
            DefaultTextStyle(
              style: key > colors.threshold ? whiteTextStyle : blackTextStyle,
              child: _ColorItem(index: key, color: colors.primary[key]!),
            ),
        ],
      ));
  }


}

class ColorDemoContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorDemoContentState()
}

class _ColorDemoContentState extends State<ColorDemoContent> {
  @override
  Widget build(BuildContext context) =>

}


class _Palette {
  _Palette({
    required this.name,
    required this.primary,
    this.accent,
    this.threshold = 900,
  });

  final String name;
  final MaterialColor primary;
  final MaterialAccentColor? accent;

  // Titles for indices > threshold are white, otherwise black.
  final int threshold;
}

List<_Palette> _allPalettes(BuildContext context) {
  final localizations = GalleryLocalizations.of(context)!;
  return [
    _Palette(
      name: localizations.colorsRed,
      primary: Colors.red,
      accent: Colors.redAccent,
      threshold: 300,
    ),
    _Palette(
      name: localizations.colorsPink,
      primary: Colors.pink,
      accent: Colors.pinkAccent,
      threshold: 200,
    ),
    _Palette(
      name: localizations.colorsPurple,
      primary: Colors.purple,
      accent: Colors.purpleAccent,
      threshold: 200,
    ),
    _Palette(
      name: localizations.colorsDeepPurple,
      primary: Colors.deepPurple,
      accent: Colors.deepPurpleAccent,
      threshold: 200,
    ),
    _Palette(
      name: localizations.colorsIndigo,
      primary: Colors.indigo,
      accent: Colors.indigoAccent,
      threshold: 200,
    ),
    _Palette(
      name: localizations.colorsBlue,
      primary: Colors.blue,
      accent: Colors.blueAccent,
      threshold: 400,
    ),
    _Palette(
      name: localizations.colorsLightBlue,
      primary: Colors.lightBlue,
      accent: Colors.lightBlueAccent,
      threshold: 500,
    ),
    _Palette(
      name: localizations.colorsCyan,
      primary: Colors.cyan,
      accent: Colors.cyanAccent,
      threshold: 600,
    ),
    _Palette(
      name: localizations.colorsTeal,
      primary: Colors.teal,
      accent: Colors.tealAccent,
      threshold: 400,
    ),
    _Palette(
      name: localizations.colorsGreen,
      primary: Colors.green,
      accent: Colors.greenAccent,
      threshold: 500,
    ),
    _Palette(
      name: localizations.colorsLightGreen,
      primary: Colors.lightGreen,
      accent: Colors.lightGreenAccent,
      threshold: 600,
    ),
    _Palette(
      name: localizations.colorsLime,
      primary: Colors.lime,
      accent: Colors.limeAccent,
      threshold: 800,
    ),
    _Palette(
      name: localizations.colorsYellow,
      primary: Colors.yellow,
      accent: Colors.yellowAccent,
    ),
    _Palette(
      name: localizations.colorsAmber,
      primary: Colors.amber,
      accent: Colors.amberAccent,
    ),
    _Palette(
      name: localizations.colorsOrange,
      primary: Colors.orange,
      accent: Colors.orangeAccent,
      threshold: 700,
    ),
    _Palette(
      name: localizations.colorsDeepOrange,
      primary: Colors.deepOrange,
      accent: Colors.deepOrangeAccent,
      threshold: 400,
    ),
    _Palette(
      name: localizations.colorsBrown,
      primary: Colors.brown,
      threshold: 200,
    ),
    _Palette(
      name: localizations.colorsGrey,
      primary: Colors.grey,
      threshold: 500,
    ),
    _Palette(
      name: localizations.colorsBlueGrey,
      primary: Colors.blueGrey,
      threshold: 500,
    ),
  ];
}