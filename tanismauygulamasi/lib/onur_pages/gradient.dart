import 'package:flutter/widgets.dart';

// taken from https://uigradients.com
class GradientColors2 {
  static final AlignmentGeometry _beginAlignment = Alignment.topLeft;
  static final AlignmentGeometry _endAlignment = Alignment.bottomRight;

  static LinearGradient buildGradient(
          AlignmentGeometry begin, AlignmentGeometry end, List<Color> colors) =>
      LinearGradient(begin: begin, end: end, colors: colors);

  static const hotLinear = LinearGradient(
      colors: [Color(0xffF55B9A), Color(0xffF9B16E)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  static LinearGradient coralCandyGradient = buildGradient(_beginAlignment,
      _endAlignment, const [Color(0xffFFF0D1), Color(0xffFFB8C6)]);

  static LinearGradient serve = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xff485563), Color(0xff485563)]);

  static LinearGradient ali = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xffff4b1f), Color(0xff1fddff)]);

  static LinearGradient aliHussien = buildGradient(_beginAlignment,
      _endAlignment, const [Color(0xfff7ff00), Color(0xffdb36a4)]);

  static LinearGradient backToFuture = buildGradient(_beginAlignment,
      _endAlignment, const [Color(0xffC02425), Color(0xffF0CB35)]);

  static LinearGradient tameer = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xff136a8a), Color(0xff267871)]);

  static LinearGradient rainbowBlue = buildGradient(_beginAlignment,
      _endAlignment, const [Color(0xff1fddff), Color(0xff0575E6)]);

  static LinearGradient blush = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xffB24592), Color(0xffF15F79)]);

  static LinearGradient byDesign = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xff009FFF), Color(0xffec2F4B)]);

  static LinearGradient haze = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xffE8EDF4), Color(0xffF6F6F8)]);

  static LinearGradient jShine = buildGradient(_beginAlignment, _endAlignment,
      const [Color(0xff12c2e9), Color(0xffc471ed), Color(0xfff64f59)]);

  static LinearGradient hersheys =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xfff1e130c),
    Color(0xff9a8478),
  ]);

  static LinearGradient taitanum =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff283048),
    Color(0xff859398),
  ]);

  static LinearGradient cosmicFusion =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xfffff00cc),
    Color(0xff333399),
  ]);

  static LinearGradient coldLinear =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xfff20BDFF),
    Color(0xffA5FECB),
  ]);

  static LinearGradient deepSpace =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff000000),
    Color(0xff434343),
  ]);

  static LinearGradient listGradient =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff8A52E9),
    Color(0xffFF416C),
  ]);
  static LinearGradient roseanna =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffffafbd),
    Color(0xffffc3a0),
  ]);
  static LinearGradient sexyblue =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff2193b0),
    Color(0xff6dd5ed),
  ]);
  static LinearGradient purplelove =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffcc2b5e),
    Color(0xff753a88),
  ]);
  static LinearGradient piglet =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffee9ca7),
    Color(0xffffdde1),
  ]);
  static LinearGradient mauve =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff42275a),
    Color(0xff734b6d),
  ]);
  static LinearGradient shadesofgrey =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffbdc3c7),
    Color(0xff2c3e50),
  ]);
  static LinearGradient lostmemory =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffde6262),
    Color(0xffffb88c),
  ]);
  static LinearGradient socialive =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff06beb6),
    Color(0xff48b1bf),
  ]);
  static LinearGradient cherry =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffeb3349),
    Color(0xfff45c43),
  ]);
  static LinearGradient pinky =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffdd5e89),
    Color(0xfff7bb97),
  ]);
  static LinearGradient lush =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff56ab2f),
    Color(0xffa8e063),
  ]);
  static LinearGradient kashmir =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff614385),
    Color(0xff516395),
  ]);
  static LinearGradient tranquil =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffeecda3),
    Color(0xffef629f),
  ]);
  static LinearGradient palewood =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffeacda3),
    Color(0xffd6ae7b),
  ]);
  static LinearGradient greenbeach =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff02aab0),
    Color(0xff00cdac),
  ]);
  static LinearGradient shalala =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffd66d75),
    Color(0xffe29587),
  ]);
  static LinearGradient frost =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff000428),
    Color(0xff004e92),
  ]);
  static LinearGradient almost =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffddd6f3),
    Color(0xfffaaca8),
  ]);
  static LinearGradient virginamerica =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff7b4397),
    Color(0xffdc2430),
  ]);
  static LinearGradient endlessriver =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff43cea2),
    Color(0xff185a9d),
  ]);
  static LinearGradient purplewhite =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffba5370),
    Color(0xfff4e2d8),
  ]);
  static LinearGradient bloodmary =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffff512f),
    Color(0xffdd2476),
  ]);
  static LinearGradient lovetonight =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff4568dc),
    Color(0xffb06ab3),
  ]);
  static LinearGradient bourbon =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffec6f66),
    Color(0xfff3a183),
  ]);
  static LinearGradient dusk =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffffd89b),
    Color(0xff19547b),
  ]);

  static LinearGradient relay =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff3a1c71),
    Color(0xffffaf7b),
  ]);
  static LinearGradient decent =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff4ca1af),
    Color(0xffc4e0e5),
  ]);
  static LinearGradient sweetmorning =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffff5f6d),
    Color(0xffffc371),
  ]);
  static LinearGradient scooter =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff36d1dc),
    Color(0xff5b86e5),
  ]);
  static LinearGradient celestial =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffc33764),
    Color(0xff1d2671),
  ]);
  static LinearGradient royal =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff141e30),
    Color(0xff243b55),
  ]);
  static LinearGradient endsunset =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffff7e5f),
    Color(0xfffeb47b),
  ]);
  static LinearGradient peach =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffed4264),
    Color(0xffffedbc),
  ]);
  static LinearGradient seablue =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff2b5876),
    Color(0xff4e4376),
  ]);
  static LinearGradient orangecoal =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffff9966),
    Color(0xffff5e62),
  ]);
  static LinearGradient aubergine =
      buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xffaa076b),
    Color(0xff61045f),
  ]);
  static LinearGradient denemekart =
  buildGradient(_beginAlignment, _endAlignment, const [
    Color(0xff6DC8F3),
    Color(0xff73A1F9),
  ]);

}
