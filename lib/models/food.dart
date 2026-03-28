//คลาสใช้จัดการข้อมูลในตาราง

// ignore_for_file: non_constant_identifier_names

class Food {
  //สร้างตัวแปรที่ตรงกับคอลัมน์ในตาราง
  String? id;
  DateTime? create_at;
  DateTime? foodDate;
  String? foodMeal;
  String? foodName;
  double? foodPrice;
  int? foodPerson;

  //กำหนดคอนสตรัคเตอร์เพื่อใช้สำหรับกำหนดค่าข้อมูล
  Food({
    this.id,
    this.create_at,
    this.foodDate,
    this.foodMeal,
    this.foodName,
    this.foodPrice,
    this.foodPerson,
  });

  //แปลงข้อมูลจากแอป ส่งไป supabase
  Map<String, dynamic> toMap() => {
        'foodDate': foodDate,
        'foodMeal': foodMeal,
        'foodName': foodName,
        'foodPrice': foodPrice,
        'foodPerson': foodPerson,
      };

  //แปลงข้อมูลจาก supabase ส่งไปแอป
  factory Food.fromMap(Map<String, dynamic> map) => Food(
        id: map['id'],
        create_at: DateTime.tryParse(map['create_at'] as String),
        foodDate: DateTime.tryParse(map['foodDate'] as String),
        foodMeal: map['foodMeal'] as String,
        foodName: map['foodName'] as String,
        foodPrice: double.parse(map['foodPrice'] as String),
        foodPerson: int.parse(map['foodPerson'] as String),
      );
}
