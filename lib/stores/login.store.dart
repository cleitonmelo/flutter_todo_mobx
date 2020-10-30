import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'login.store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store{

  _LoginStore(){
    autorun((_){
      print(tooglePasswordVisibility);
    });
  }

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = false;

  @action
  void tooglePasswordVisibility() => passwordVisible = !passwordVisible;

  @computed
  bool get isValid => isEmailValid && isPasswordValid;

  @computed
  bool get isEmailValid => EmailValidator.validate(email);

  @computed
  bool get isPasswordValid => password.length >= 6;
}