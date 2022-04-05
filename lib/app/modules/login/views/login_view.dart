import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytselui/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Silahkan masuk dengan nomor telkomsel kamu",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Nomor HP",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Cth. 0822800289xx",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.checkC.value,
                    onChanged: (value) => controller.checkC.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Saya menyetujui ",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("klik syarat");
                            },
                          text: "syarat",
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        const TextSpan(
                          text: ", ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("klik ketentuan");
                            },
                          text: "ketentuan",
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        const TextSpan(
                          text: ", dan ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("klik privasi");
                            },
                          text: "privasi ",
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        const TextSpan(
                          text: "Telkomsel",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'MASUK',
                style: TextStyle(
                  color: Color(0xff74708c),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: const Size(150, 50),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text("Atau masuk menggunakan"),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        'Facebook',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff385998),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(140, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: Color(0xff385998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () => Get.offAllNamed(Routes.HOME),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/twitter.png"),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        'Twitter',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1DA1F2),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(140, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
