
A Parallax effect package, Package is useful for animations for items in foreground, or background scrolling effect.

## Features

+ Parallax movement with different stackable layers.
+ Supports 3 dimensional rotation.

![image not available](./assets/example.gif)
## Getting started
1. Use `Parallax` widget for Configurations:
    + **height**: _widget parent height_
    + **width**: _widget parent width_
    + **enableDrag**: _enables on click/tap movement_
    + **item**: _children of type `ParallaxItem`_
2. Use `ParallaxItem` widget for Configurations:
    + **factor**: ParallaxFactor(x,y)
    + **alignment**: _initial alignment of child_
    + **rotationFactor**: ParallaxFactor(x,y) for rotation
    + **child**: _child_


## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
class ParallaxExample extends StatefulWidget {
  const ParallaxExample({Key? key}) : super(key: key);

  @override
  State<ParallaxExample> createState() => _ParallaxState();
}

class _ParallaxState extends State<ParallaxExample>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Parallax(
        height: 400,
        width: 400,
        enableDrag: true,
        items: List.generate(5,(index)=>
        ParallaxItem(
            factor:ParallaxFactor(0.05*index,0.05*index),
            rotationFactor: ParallaxFactor(0,0.05*index),
            child: Container(
                height:50,
                width:50,
                color: Colors.green
            )
        )),
    );
```

<!-- ## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more. -->
