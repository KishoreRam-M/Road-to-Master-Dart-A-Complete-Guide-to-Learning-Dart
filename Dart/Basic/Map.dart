

void main() {
  print("welocome to dart ");

  Map<int, String> mapOfValues = {1: "Kishore Ram M", 2: "Ram", 3: "KRM"};
  print(mapOfValues.isEmpty);
  mapOfValues.update(2, (oldvalue) => " Kram");
 mapOfValues.update(4,(oldvalue)=>"Default Value" ,ifAbsent: ()=>"DefaultVAlue");

   mapOfValues.removeWhere((key, value) => value.length > 5);
  
    print(mapOfValues);

}
