import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_task/ui/pages/test.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar(),
            SizedBox(
              height: 20.h,
            ),
            Center(child: const Text('Константин Володарский')),
            SizedBox(
              height: 20.h,
            ),
            const Divider(thickness: 1),
            SizedBox(
              height: 10.h,
            ),
            const Text('Что на странице Контантина кажется вам\n недопустимым?'),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const MyTest();
                  }),
                );
              },
              child: const Text('Спам'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Мошенничество'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Оскорбления'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Откровенное изображение'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Проблема с профилем'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Нарушение интеллектуальных прав'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Прочее'),
            ),
          ],
        ),
      ),
    );
  }

  Column appbar() {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            maxRadius: 40,
            backgroundColor: const Color(0xFFE6E8EB),
            child: Text(
              'К',
              style: TextStyle(
                fontSize: 40.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
