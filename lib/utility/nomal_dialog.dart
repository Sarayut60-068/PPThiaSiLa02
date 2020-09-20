import 'package:flutter/material.dart';

Future<void> normalDialog(BuildContext context, String messsage) async {
  // ใช้ Future เพราะว่าต้องการสร้างให้มันเป็ฯ เทรด เมื่อป๊อปอัพเด้งขึ้นสิ่งที่เป็นสเตทต้องหยุดการทำงานชั่วคราวรอให้ป๊อปอัพทำงานเสดถึงจะคืนกลับไปหาสเตทเหมือนเดิม
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(messsage),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        )
      ],
    ),
  );
}
