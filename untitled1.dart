import 'dart:io';
void main() {

  Bmw bmw=Bmw(speed: 100, name: "sd", owner: "yehia", color: "red");
  Toyota toyota =Toyota(speed: 120, name: "sdd", owner: "yehia", color: "black");
  bmw.speedUp();
  bmw.speedUp();
  bmw.Break();
  toyota.speedUp();
  toyota.Break();
  toyota.Break();
  bmw.info();
  toyota.info();
}

class Car{
  String name;
  String owner;
  String color;
  int speed;
  Car({required this.name,required this.owner,required this.color,required this.speed});
  int? speedUp(){}
  int? Break(){}
  void info(){
    print("My name is $owner ,my car name $name,its color is $color,iam driving now at speed $speed");
  }
}
class Bmw extends Car{
  Bmw({required super.speed, required super.name, required super.owner, required super.color});
  int speedUp() {
    speed+=30;
    return speed;
  }
  int Break(){
    speed-=30;
    return speed;
  }
}
class Toyota extends Car{
  Toyota({required super.speed, required super.name, required super.owner, required super.color});
  int speedUp() {
    speed+=20;
    return speed;

  }
  int Break(){
    speed-=20;
    return speed;
  }
}
