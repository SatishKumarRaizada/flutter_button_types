<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This is super cool package gives you all the button types in Flutter with beautiful styles and much more.

## Features

This package gives you beautiful buttons with minimal code base into your application.

## Getting started

Import the package and enjoy the different flutter buttons.

## Usage

There are number of textfield property that you can use and modify:

- TextButton
- OutlinedButton
- TextButton with icon
- OutlinedButton with icon
- Circular button with icon

<hr>
<table>
<tr>
<td>

```dart
class MyFlutterButtons extends StatelessWidget {
  const MyFlutterButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FlutterCircleButton(
            buttonIcon: const Icon(Icons.camera_alt),
            onTap: () {},
        ),
    );
  }
}
```

</td>
<td>
<img src="https://user-images.githubusercontent.com/70257658/150648495-a7fce8f3-1425-4f93-89ae-2f3933972161.png" alt="">
</td>
</tr>
</table>

## Additional information

TODO: Add more capability to change colors to gradient, Add more buttons animation, Add some cool feature on tap.
