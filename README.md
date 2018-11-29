## DML iOS Mobile App

### Running the app

Make sure you have cocoapods installed

`gem install cocoapods`

In the root of the project run

`pod install`

Then open the `DMLMobile.xcworkspace` file (not the .xcodeproj file)


### Dependencies worth noting

`ReSwift`

ReSwift is a redux-like state mangement system for Swift.
There is a store, actions, reducers and your view controllers (or views in one case) subscribe to the state changes and update
their elements.

`ReSwiftRouter`

The router takes URL-like segments and then loads a `Routable` for each route state change.
The `Routable` is in charge of the current _same level_ routes. It controls what happens when you either:

- change route segments, ie. replace `["Dashboard", "Earnings"]` with `["Dashboard", "Transactions"]`
- push a segment, ie. `["Dashboard"]`, to [`"Dashboard", "Earnings"]`
- pop a segment, ie. `["Dashboard", "Earnings"]`, to `["Dashboard"]`

You then just send your store the route segments and it handles view controller changes.

`R.swift`

Generates a file that gives you constants for all your storyboard ids and images, etc.
Generated file gets regenerated on each build.

`Promises`

Generic promises in Swift. Similar to the JS API. To avoid the pyramid of doom.
