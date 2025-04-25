import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/config/ui/colors.dart';
import 'package:flutter_clean_architecture/app/pages/widgets/default_scaffold_mixin.dart';
import 'package:get/get.dart';

import '../../config/routes/router_name.dart';
import '../../config/ui/typography.dart';

class LoginPage extends StatelessWidget with DefaultScaffoldMixin {
  LoginPage({super.key});

  final LoginController controller = LoginController();

  @override
  String? get title => "Login";

  @override
  Widget buildBody(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Log in"),
            _buildInputField(
              hintText: "请输入用户名",
              onValueChanged: (value) {
                controller.username = value;
              },
            ),
            _buildInputField(
              hintText: "请输入密码",
              onValueChanged: (value) {
                controller.password = value;
              },
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Obx(() {
                      return ElevatedButton(
                        onPressed: controller.canLogin.value
                            ? controller.onTapLogin
                            : null,
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          elevation: 0,
                          backgroundColor: AppColors.colorScheme.primary,
                          foregroundColor: AppColors.colorScheme.onPrimary,
                        ),
                        child: const Text("登录"),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String hintText,
    required Function(String text) onValueChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
      ),
      child: TextField(
        onChanged: (value) => onValueChanged(value),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: ATextStyle.bodyMedium(Colors.grey),
        ),
      ),
    );
  }
}

class LoginController {
  final canLogin = false.obs;
  String _username = "";
  String _password = "";

  set username(String username) {
    _username = username;
    canLogin.value = _username.isNotEmpty && _password.isNotEmpty;
  }

  set password(String password) {
    _password = password;
    canLogin.value = _username.isNotEmpty && _password.isNotEmpty;
  }

  void onTapLogin() {
    if (canLogin.value) {
      Get.offAllNamed(RouterName.home);
    }
  }
}
