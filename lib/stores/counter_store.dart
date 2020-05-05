import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeapp/stores/root_store.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  RootStore rootStore;

  _CounterStore(this.rootStore);

  @observable
  int value = 0;

  @action
  void changeCount(int count) => this.value = count;

  @action
  Future<void> increment() async {
    value++;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('count', value);
  }

  @action
  Future<void> decrement() async {
    value--;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('count', value);
  }
}


//to build g.dart files run this shit in your shell:
// $ flutter packages pub run build_runner build