import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeapp/stores/root_store.dart';

part 'account_store.g.dart';

class AccountStore = _AccountStore with _$AccountStore;

abstract class _AccountStore with Store {
  RootStore rootStore;

  _AccountStore(this.rootStore) {
//    this.rootStore.loadStoreData();
  }


  @observable
  String name = "Your name";

  @observable
  String description = "HOW MANY SOMETHING";

  @observable
  String avatar;

  @action
  Future<void> changeName(String name) async {
    this.name = name;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
  }

  @action
  Future<void> changeDescription(String description) async {
    this.description = description;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('description', description);
  }

  @action
  void changeAvatar(String avatar) => this.avatar = avatar;

  @action
  Future<void> setAvatar(ImageSource source) async {
    var image = await ImagePicker.pickImage(source: source);
    this.avatar = image.path;
  }
}

//to build g.dart files run this shit in your shell:
// $ flutter packages pub run build_runner build
