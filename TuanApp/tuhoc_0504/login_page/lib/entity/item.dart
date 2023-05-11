

import 'dart:ui';

class Item{
  String avatar;
  String ten;
  String ndung;
  bool dadoc;
  String thoigian;
  bool trangthai;
  Item(
    {
      required this.avatar,
      required this.ten,
      required this.ndung,
      required this.dadoc,
      required this.thoigian,
      required this.trangthai,
    }
  );
  }
  List<Item> items = [
    Item(avatar: 'assets/images/avaHai.jpg', ten: 'Nguyen Duc Hai', ndung: 'Text1',dadoc: true, thoigian: '2:46', trangthai: true),
    Item(avatar: 'assets/images/avaPhuc.jpg', ten: 'Phúc', ndung: 'Text1',dadoc:false, thoigian: '4:15', trangthai: false),
    Item(avatar: 'assets/images/mess1.jpg', ten: 'User 1', ndung: 'Text1',dadoc:false, thoigian: '12:15', trangthai: true),
    Item(avatar: 'assets/images/mess2.jpg', ten: 'User  2', ndung: 'Text1',dadoc: true, thoigian: '8:15', trangthai: false),
    Item(avatar: 'assets/images/mess3.jpg', ten: 'User 3', ndung: 'Text1',dadoc:false, thoigian: '9:28', trangthai: true),
    Item(avatar: 'assets/images/mess4.jpg', ten: 'User 4', ndung: 'Text1',dadoc: true, thoigian: '3:15', trangthai: false),
    Item(avatar: 'assets/images/mess5.jpg', ten: 'User 5', ndung: 'Text1',dadoc:false, thoigian: '10:27', trangthai: true),
    Item(avatar: 'assets/images/mess6.jpg', ten: 'User 6', ndung: 'Text1',dadoc: true, thoigian: '5:12', trangthai: false),
    Item(avatar: 'assets/images/mess7.jpg', ten: 'User 7', ndung: 'Text1',dadoc:false, thoigian: '11:23', trangthai: true),
    Item(avatar: 'assets/images/mess8.jpg', ten: 'User 8', ndung: 'Text1',dadoc:false, thoigian: '13:28', trangthai: false),
    Item(avatar: 'assets/images/mess9.jpg', ten: 'User 9', ndung: 'Text1',dadoc: true, thoigian: '14:47', trangthai: true),
    Item(avatar: 'assets/images/mess10.jpg', ten: 'User 10', ndung: 'Text1',dadoc:false, thoigian: '16:25', trangthai: false),
  ];