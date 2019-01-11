import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:sponge_client_angular_dart_example/src/todo_list/sponge_service.dart';

import 'todo_list_service.dart';

@Component(
  selector: 'todo-list',
  styleUrls: ['todo_list_component.css'],
  templateUrl: 'todo_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [
    const ClassProvider(TodoListService),
    // Add the Sponge Service DI provider.
    const ClassProvider(SpongeService),
  ],
)
class TodoListComponent implements OnInit {
  final TodoListService todoListService;

  /// The Sponge service.
  final SpongeService spongeService;

  List<String> items = [];
  String newTodo = '';

  TodoListComponent(this.todoListService, this.spongeService);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getTodoList();
  }

  Future<Null> add() async {
    // The Sponge action call.
    try {
      items.add(await spongeService.client.call('UpperCase', [newTodo]));
    } catch (e) {
      items.add('$e');
    }
    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);
}
