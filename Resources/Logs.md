# #100-days-of-flutter logs

## Day 0: February 10, 2022

**Progress** : Set up development environment for flutter.

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)

## Day 1: February 11, 2022

**Progress** :About widgets, types of basic widgets. Changing theme like primary color, secondary color. Used the Scaffold class and added the appBar,floatingActionButton,bottomNavigationBar.

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)

## Day 2: February 12, 2022

**Progress**

- _Drawer class_ - Helps create horizontal sliding panel, having
- _ListView class_ - A scrollable list of widgets arranged linearly. It contains ListTile
- _Alignment Class_ - Helps align content in widget.

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)

## Day 3: February 13, 2022

**Progress**

- _ListView class_ - A scrollable list of widgets arranged linearly. It contains ListTile.
  There are four options for constructing a ListView:
  - The default constructor, it takes a fixed amount of ListTile item.
  - [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html) : This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible.
  - [ListView.seperator](https://api.flutter.dev/flutter/widgets/ListView/ListView.separated.html) : Creates a fixed-length scrollable linear array of list "items" separated by list item "separators". This constructor is appropriate for list views with a large number of item and separator children because the builders are only called for the children that are actually visible. Separators only appear between list items: separator 0 appears after item 0 and the last separator appears before the last item.
  - [ListView.custom](https://api.flutter.dev/flutter/widgets/ListView/ListView.custom.html)

A ListView is basically a CustomScrollView with a single SliverList in its CustomScrollView.slivers property.

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)

## Day 4: February 22, 2022

**Progress**

- _SLiverAppBar_ - A material design app bar that integrates with CustomScrollView. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. [Animated Example](https://api.flutter.dev/flutter/material/SliverAppBar-class.html).

  - SliverAppBar provide three behaviour pinned, snap, flaot.
  - Use delegate and SliverChildBuilderDelegate for Sliverlist.
  - Use [TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html) and [FlexibleSpaceBar](https://api.flutter.dev/flutter/material/FlexibleSpaceBar-class.html).

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)

## Day 5: February 26, 2022

**Progress**

- _SliverList_ : which is a sliver that displays linear list of children.
- _SliverFixedExtentList_ : which is a more efficient sliver that displays linear list of children that have the same extent along the scroll axis.
- _SliverGrid_ : which is a sliver that displays a 2D array of children.
- _SliverPadding_ : which is a sliver that adds blank space around another sliver.
- _SliverAppBar_ : which is a sliver that displays a header that can expand and float as the scroll view scrolls.
- _IndexedSemantics_ : which allows annotating child lists with an index for scroll announcements.

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)

## Day 6: February 27, 2022

**Progress**

`Difference between SingleChildScrollView, ListView, And CustomScrollView`

- SingleChildScrollView is used for single child item. It is used with Column widget.
- ListView has four types to make scroll widgets.
- CustomScrollView is used with Sliver to make scroll item.
- ListView is similar to CustomScrollView, and CustomScrollView is more preferable.


### _`Stateless and Statefull widgets`_
- Stateless widget receive argument from their parent and store in _`final`_ member.
- Flutter uses statefull widget to carry some state.

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)
