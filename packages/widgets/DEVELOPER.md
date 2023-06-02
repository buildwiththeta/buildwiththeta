# How to use code generation

1) **Go to nodes_classes.dart**
Go to nodes_classes.dart, remove the comment in line 18:
```dart
part 'nodes_classes.nodebuilder.g.dart';
```

---

2) **Start the code generation**
Run the command: 
```dart
flutter pub run build_runner build --delete-conflicting-outputs
```

---

3) **Leave the line commented**
Comment the line again as following:
```dart
//part 'nodes_classes.nodebuilder.g.dart';
```
⚠️ Without removing the line!

# Unsupported widgets
- MaterialAppBar
- CupertinoAppBar
- MaterialBottomBar
- ExampleWP
- Radio
- Tooltip
- BottomBarItem
- ClipRect
- ClipRoundedRect
- LinearProgressIndicator
- RotatedBox
- CircularProgressIndicator
- ClipOval
- Card
- Visibility
- FittedBox
- AspectRatio
- Placeholder
- AnimatedContainer
- AnimatedOpacity
- AnimatedAlign
- Offstage
- OverflowBox
- IndexedStack
- ListTile
- RefreshIndicator
- ConstrainedBox
- ExpansionPanel
- CupertinoSwitch
- CupertinoPicker
- CupertinoSegmentedControl
- Map
- MapBuilder
- Google Maps
- MapBox
- Marker
- TCard
- TCardBuilder
- ConcentricPageView
- BouncingWidget
- Calendar
- CalendarV2
- Camera
- AudioPlayer
- AudioPlayerProgressIndicator
- AudioPlayerVolumeIndicator
- WebView
- Parallax
- DotsIndicator
- Wrapper
- FontAwesomeIcon
- FeatherIcons
- LineIcon
- QrCode
- QrScanner
- Barcode
- Video
- Transform Rotate
- Transform Translate
- Transform Scale
- Transform Perspective
- Scale Animation
- Slide Animation
- Fade Animation
- Animation Config Static List
- Animation Config Grid
- Animation Config List
- Animation AdMobBanner

