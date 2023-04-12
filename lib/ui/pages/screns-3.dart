import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/button/my-elevatedbutton.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Image.asset('assets/images/Group 1.png'),
                ),
              ),
              Text('Спасибо!'),
              Text('Модераторы скоро рассмотрят вашу жалобу.'),
              MyElevetedBtn(
                colors: const Color(0xFF3A86FF),
                title: 'Закрыть',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Container();
                    }),
                  );
                },
              ),
            ],
          ),
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
