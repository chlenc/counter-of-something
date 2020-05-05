import 'package:shared_preferences/shared_preferences.dart';

import 'account_store.dart';
import 'counter_store.dart';

class RootStore {
  CounterStore counterStore;
  AccountStore accountStore;

  RootStore() {
    this.counterStore = CounterStore(this);
    this.accountStore = AccountStore(this);
  }

  saveStoreData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', this.accountStore.name);
    await prefs.setString('description', this.accountStore.description);
    await prefs.setString('avatar', this.accountStore.avatar);
    await prefs.setInt('count', this.counterStore.value);
  }

  loadStoreData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int count = prefs.getInt('count');
    String name = prefs.getString('name');
    String description = prefs.getString('description');
    String avatar = prefs.getString('avatar');

    if (count != null) this.counterStore.changeCount(count);
    if (avatar != null) this.accountStore.changeAvatar(avatar);
    if (name != null) this.accountStore.changeName(name);
    if (description != null) this.accountStore.changeDescription(description);
  }
}
