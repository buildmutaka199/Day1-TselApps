import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: const TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Muhammad",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              width: 30,
              height: 30,
              child: Image.asset(
                "assets/icons/qr.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xffec202b),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 200,
              width: Get.width,
              color: const Color(0xffec202b),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffe52d27),
                              Color(0xffb31217),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '082280028934',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset('assets/logo/simpati.png'),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Sisa Pulsa Anda',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Rp 50.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffF7B731),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            RichText(
                              text: const TextSpan(
                                text: "Berlaku Sampai ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: "01 April 2022",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Telkomsel POIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF7B731),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text(
                                    "200",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          StatusCard(
                            title: "Internet",
                            data: "15",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telepon",
                            data: "150",
                            satuan: "Min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "150",
                            satuan: "SMS",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 8,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  ItemKategori(
                                    title: "Internet",
                                    icon: "assets/icons/internet.png",
                                  ),
                                  ItemKategori(
                                    title: "Telpon",
                                    icon: "assets/icons/telpon.png",
                                  ),
                                  ItemKategori(
                                    title: "SMS",
                                    icon: "assets/icons/sms.png",
                                  ),
                                  ItemKategori(
                                    title: "Roaming",
                                    icon: "assets/icons/roaming.png",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  ItemKategori(
                                    title: "Hiburan",
                                    icon: "assets/icons/hiburan.png",
                                  ),
                                  ItemKategori(
                                    title: "Unggulan",
                                    icon: "assets/icons/unggulan.png",
                                  ),
                                  ItemKategori(
                                    title: "Tersimpan",
                                    icon: "assets/icons/tersimpan.png",
                                  ),
                                  ItemKategori(
                                    title: "Riwayat",
                                    icon: "assets/icons/riwayat-icon.png",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 26,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Terbaru dari Telkomsel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffec202b),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.grey),
                            ),
                          ),
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              ItemNav(
                                icon: "beranda",
                                status: true,
                                title: "Beranda",
                              ),
                              ItemNav(
                                icon: "riwayat",
                                status: false,
                                title: "Riwayat",
                              ),
                              ItemNav(
                                icon: "bantuan",
                                status: false,
                                title: "Bantuan",
                              ),
                              ItemNav(
                                icon: "inbox",
                                status: false,
                                title: "Inbox",
                              ),
                              ItemNav(
                                icon: "profile",
                                status: false,
                                title: "Akun Saya",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  const ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: Get.width * 0.8,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  const ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 34,
          height: 34,
          child: Image.asset(
            icon,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 22,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: TextStyle(
            color: (status == true)
                ? const Color(0xffec202b)
                : const Color(0xff747d8c),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 4,
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xffec202b),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: const TextStyle(
                      color: Color(0xff747D8C),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 60, size.height);
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
