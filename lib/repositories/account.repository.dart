import 'package:masterclass_balta/models/user.models.dart';
import 'package:masterclass_balta/view-models/signup.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignUpViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
      id: "1",
      name: "Ítaol gabriel",
      email: "italocod@hotmail.com",
      picture: "https://picsum.photos/id/1/200/300",
      role: "student",
      token: "xpto",
    );
  }
}
