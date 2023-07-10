List<String> list1 = ["a", "b", "c"];
List<String> list2 = ["a", "b", "c"];
List<String> list3 = ["a", "b", "c"];
List<String> list4 = list3;
int num1 = 12;
int num2 = 12;
int num3 = 13;
hashObjectList hashObject1 = new hashObjectList(list1);
hashObjectList hashObject2 = new hashObjectList(list2);
hashObjectList hashObject3 = new hashObjectList(list3);
hashObjectList hashObject4 = new hashObjectList(list4);
hashObjectInt hashInt1 = new hashObjectInt(num1);
hashObjectInt hashInt2 = new hashObjectInt(num2);
hashObjectInt hashInt3 = new hashObjectInt(num3);
bool listEquality12 = list1 == list2;
bool listEquality34 = list3 == list4;
void main() {
  print("list1 has a hashcode value of " + hashObject1.hashCode.toString());
  print("list2 has a hashcode value of " + hashObject2.hashCode.toString());
  print("list3 has a hashcode value of " + hashObject3.hashCode.toString());
  print("list4 has a hashcode value of " + hashObject4.hashCode.toString());
  print("list1 == list2 is " + listEquality12.toString());
  print("list3 == list4 is " +
      listEquality34.toString() +
      ", this shows that there is no inherent equality for lists in Dart, unless specified");

  print(num1.toString() +
      " or num1 has a hashcode of " +
      hashInt1.hashCode.toString());
  print(num2.toString() +
      " or num2 has a hashcode of " +
      hashInt2.hashCode.toString());
  print(num3.toString() +
      " or num3 has a hashcode of " +
      hashInt3.hashCode.toString());
}

class hashObjectList {
  final Object list1;
  hashObjectList(this.list1);
  int get hashCode => Object.hash(list1, list1);
} //an object to retrieve hashcode or digital signature of a list

class hashObjectInt {
  final Object int1;
  hashObjectInt(this.int1);
  int get hashCode => Object.hash(int1, int1);
} //an object to retrieve hashcode or digital signature of a list
