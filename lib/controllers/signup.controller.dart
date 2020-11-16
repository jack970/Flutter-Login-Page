import 'package:masterclass_balta/models/user.models.dart';
import 'package:masterclass_balta/repositories/account.repository.dart';
import 'package:masterclass_balta/view-models/signup.viewmodel.dart';

class SignUpController {
  AccountRepository repository;

  SignUpController() {
    repository = new AccountRepository();
  }

  Future<UserModel> create(SignUpViewModel model) async {
    model.busy = true;
    var user = await repository.createAccount(model);
    model.busy = false;
    return user;
  }
}
