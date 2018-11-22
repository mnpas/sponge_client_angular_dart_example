# sponge_client_angular_dart_example
The example of the Sponge client for Dart in the [AngularDart](https://webdev.dartlang.org/angular) web application.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE) (see https://webdev.dartlang.org/guides/get-started) and modified to show how to use the Sponge client. The modifications include:

* Adding the `sponge_client_dart` dependency and dependency override for `quiver` in the `pubspec.yaml`.
* Adding a new `SpongeService` class in the `lib/src/todo_list/sponge_service.dart`.
* Adding the Sponge Service DI provider and the `spongeService` property in the `lib/src/todo_list/todo_list_component.dart`.
* Adding the Sponge action call in the `add()` method and changing this method to `async` in the `lib/src/todo_list/todo_list_component.dart`.

```dart
// The Sponge action call.
items.add(await spongeService.client.call('UpperCase', [newTodo]));
 ```

 The only change to the source web app is that all list items will be upper case. Note that in this simple example there is no exception handling. If the app doesn't work as expected, please see the JavaScript console.

 For more information on Sponge see http://sponge.openksavi.org.