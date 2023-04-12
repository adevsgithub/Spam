import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_task/ui/pages/screns-3.dart';

import '../../constants/button/my-elevatedbutton.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              const Text('Спам'),
              const Text(
                  'Отправьте жалобу, если пользователь рассылает рекламные сообщения, комментарии или другим способом распространяет рекламу в непредназначенных для этого местах.'),
              Text('Комментарий (необязательно)'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border(
                      bottom: BorderSide(),
                      left: BorderSide(),
                      right: BorderSide(),
                      top: BorderSide(),
                    ),
                  ),
                  height: 120.h,
                  width: 500.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Опишите причину жалобы',
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              MyElevetedBtn(
                colors: const Color(0xFF3A86FF),
                title: 'Отправить жалобу',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return Screen3();
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
