import 'package:mobx/mobx.dart';

part 'todo.store.g.dart';
class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {

  _TodoStore(this.title);

  final String title;

  @observable
  bool done = false;

  @action
  void hasDone() => done = !done;
}