## Day 4: February 22, 2022

**Progress**
- 

- _ListView class_ - A scrollable list of widgets arranged linearly. It contains ListTile.
  There are four options for constructing a ListView:
  - The default constructor, it takes a fixed amount of ListTile item.
  - [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html)This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible.
  - [ListView.seperator](https://api.flutter.dev/flutter/widgets/ListView/ListView.separated.html) Creates a fixed-length scrollable linear array of list "items" separated by list item "separators". This constructor is appropriate for list views with a large number of item and separator children because the builders are only called for the children that are actually visible. Separators only appear between list items: separator 0 appears after item 0 and the last separator appears before the last item.
  - [ListView.custom](https://api.flutter.dev/flutter/widgets/ListView/ListView.custom.html)

[see my progress](https://github.com/saurabhtopthon01/100-days-of-flutter/tree/main/Resources/Project/first_app)