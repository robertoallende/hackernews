# Hacker News App

The Boring Flutter Development Show's Hacker News App.

## Versions and show

### v0.1 - Episode 1
Basic app after following with mocked data. [Episode video](https://www.youtube.com/watch?v=yr8F2S3Amas).

Topics covered:
 - Basic app creation.
 - ListView
 - ExpansionTile
 - MainAxisAlignment 
 - ListTile
 
### v0.2 - Episode 2
JSON Data and testing. [Episode video](https://www.youtube.com/watch?v=TiCA0CEePyE).

Topics covered:
 - Tests and widget tests
 - Tests' [pump and pumpAndSettle](https://youtu.be/TiCA0CEePyE?t=812)
 - Parsing json with dart:convert
 - Parsing json with [built_Value](https://youtu.be/TiCA0CEePyE?t=3226) and [source generation](https://youtu.be/TiCA0CEePyE?t=3060)
 - Add Android Studio Live Template for [built value](https://youtu.be/TiCA0CEePyE?t=3870)
 - [Episode Recap](https://youtu.be/TiCA0CEePyE?t=4278)

### v0.3 - Episode 3
Networking and FutureBuilder. [Episode video](https://www.youtube.com/watch?v=rfagvy5xCW0&t=45s).

Topics covered:
 - [Built Value](https://youtu.be/rfagvy5xCW0?t=140)
 - [Built value Documentation](https://youtu.be/rfagvy5xCW0?t=608)
 - [End of first part: source gen of json parse](https://youtu.be/rfagvy5xCW0?t=1640)
 - [HTTP Overrides](https://youtu.be/rfagvy5xCW0?t=1925)
 - [const vs final in dart/flutter](https://youtu.be/rfagvy5xCW0?t=2044)
 - [Http Package](https://youtu.be/rfagvy5xCW0?t=2220)
 - [Basics of HTTP class in Dart/Flutter](https://youtu.be/rfagvy5xCW0?t=3029)
 
Resources mentioned
 - [Dart’s built_value for Serialization](https://medium.com/dartlang/darts-built-value-for-serialization-f5db9d0f4159)
 - The command to generate code is '$ flutter packages pub run build_runner build'
 - The command to get packages after changing pubspec.yaml is '$ flutter packages get'
 
### v0.4 - Episode 4
Technical Debt and Streams/BLoC. [Episode video](https://www.youtube.com/watch?v=fahC3ky_zW0).
 
Topics covered:
  - Refactor technical debt. Remove new. 
  - [Text Doc in Dart](https://youtu.be/fahC3ky_zW0?t=851)
  - [Json 2 built value](https://youtu.be/fahC3ky_zW0?t=965)
  - [States](https://youtu.be/fahC3ky_zW0?t=1139)
  - [Streams](https://youtu.be/fahC3ky_zW0?t=1384)
  - [Future.wait](https://youtu.be/fahC3ky_zW0?t=1832)
  - [Live Template for StreamBuilder](https://youtu.be/fahC3ky_zW0?t=2337)
  - [Type conflicts on imports](https://youtu.be/fahC3ky_zW0?t=2573)
  - [Recap 1](https://youtu.be/fahC3ky_zW0?t=2656)
  - [Icons included in Flutter](https://youtu.be/fahC3ky_zW0?t=3063)
  - [Implementation of _stotiesTypeController](https://youtu.be/fahC3ky_zW0?t=3395)
  - [Recap 2](https://youtu.be/fahC3ky_zW0?t=3810)
  
Resources mentioned
  - [json2builtvalue](https://github.com/charafau/json2builtvalue)
  
### v0.5 - Episode 5
Adding Animations to Your App. [Episode video](https://www.youtube.com/watch?v=dNSteCm-cEY).
 
Topics covered:
  - [Circular indicator from Bloc](https://youtu.be/dNSteCm-cEY?t=456)
  - [Fix bottom nav tab button change bug](https://youtu.be/dNSteCm-cEY?t=730)
  - [Bloc vs States](https://youtu.be/dNSteCm-cEY?t=790)
  - [Stream bloc good practices](https://youtu.be/dNSteCm-cEY?t=1223)
  - [Add Animations](https://youtu.be/dNSteCm-cEY?t=1965)
  - [TickerProviderStateMixin vsync](https://youtu.be/dNSteCm-cEY?t=2164)
  - [Tween and multiple pieces of animation](https://youtu.be/dNSteCm-cEY?t=2560)
  
Resources mentioned
  - [Font Awesome Icons](https://pub.dev/packages/font_awesome_flutter)
  - [Tween Animation](https://api.flutter.dev/flutter/animation/Tween-class.html)
  - [Flutter Animations](https://flutter.dev/docs/development/ui/animations)
  
### Episodes 6: [Packages and Plugins](https://www.youtube.com/watch?v=ht2bDlJd2c4&t=67s) 
  
### Episodes 7: [Barometer Plugin part 2](https://www.youtube.com/watch?v=wQj-lKfBvbQ)  
   
### v0.6 - Episode 8
Code Cleanup and Fixing Pub Versioning in Hacker News Ap. [Episode video](https://www.youtube.com/watch?v=LrQWzOkC0XQ).
   
Topics covered:
  - [Fixing Warning](https://youtu.be/LrQWzOkC0XQ?t=308)
  - [Fix for This class (or a class which this class inherits from) is marked as '@immutable'](https://youtu.be/LrQWzOkC0XQ?t=325) 
  - [Q&A: What if I've two blocs and I need to communicate one to the other](https://youtu.be/LrQWzOkC0XQ?t=681)
  - [Fetching ids of top and new stories](https://youtu.be/LrQWzOkC0XQ?t=788)
  - [How to solve when we want to use await in a constructor but constructors cannot be asynchronous](https://youtu.be/LrQWzOkC0XQ?t=1005)
  - [Recap 1](https://youtu.be/LrQWzOkC0XQ?t=1439)
  - [Showing # of comments](https://youtu.be/Bud7XR8crWw?t=47)
  - [Add a cache](https://youtu.be/Bud7XR8crWw?t=136)
  - [Publishing a Flutter App to the Play Store](https://www.youtube.com/watch?v=dR04ArAhxd4)
  
Resources mentioned
  - [Preparing an Android app for release](https://flutter.dev/docs/deployment/android)
  - [Preparing an iOS app for release](https://flutter.dev/docs/deployment/ios)
  
### v0.7 - Episode 9
Material Components, Material.io, and Theming. [Episode video](https://youtu.be/kxSVpYc2osA).

Topics covered:
  - [Material Guidelines](https://youtu.be/kxSVpYc2osA)
  - [ThemeData](https://youtu.be/kxSVpYc2osA?t=513)
  - [Design and character spaces](https://youtu.be/kxSVpYc2osA?t=1071)
  - [Constrast Ratio](https://youtu.be/kxSVpYc2osA?t=1577)
  - [Changing fonts](https://youtu.be/kxSVpYc2osA?t=2200)
  - [Recap](https://youtu.be/kxSVpYc2osA?t=2609)
  
Resources mentioned
  - [Material Guidelines](https://material.io/design/)
  - [Material Studies](https://material.io/design/material-studies/)
  - [Constrast Ratio](https://contrast-ratio.com/)
  - [Google Fonts](https://fonts.google.com)
  
### v0.8 - Episode 10
Flutter's Search Support. [Episode video](https://www.youtube.com/watch?v=Wm3OiFBZ2xI)  

### Episode 11
Exploring Flutter Samples and Examples. [Episode video](https://www.youtube.com/watch?v=mztMzzD8NiE)

Topics covered:
  - [inKino a cinema app for mobile and web/angular, parsing xml](https://youtu.be/mztMzzD8NiE?t=61)
  - [MtechViral](https://youtu.be/mztMzzD8NiE?t=1044)
  - [FittedBox sample](https://youtu.be/mztMzzD8NiE?t=1170)
  - [Spacer](https://youtu.be/mztMzzD8NiE?t=1747)
  - [FlipBirds Game](https://youtu.be/mztMzzD8NiE?t=2110)
  - [Q&A with GDE](https://youtu.be/mztMzzD8NiE?t=3047) 

Resources mentioned:
  - [A curated list of samples](https://github.com/flutter/samples/blob/master/INDEX.md)
  - [inKino](https://github.com/roughike/inKino)
  - [MtechViral](https://www.youtube.com/channel/UCFTM1FGjZSkoSPDZgtbp7hA)
  
  
### Episode 12
Slivers Explained - Making Dynamic Layouts. [Episode Video](https://www.youtube.com/watch?v=Mz3kHQxBjGg)

Topics covered: 
  - [Flutters Layout and Slivers](https://youtu.be/Mz3kHQxBjGg?t=55)
  - [SliverAppBar](https://youtu.be/Mz3kHQxBjGg?t=422)
  
  
  