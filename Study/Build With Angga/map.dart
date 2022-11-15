void main() {
  //MAP = Menggunakan Key dan Value

  Map<String, dynamic> mahouShoujo = {
    'name': 'Madoka',
    'age': 14,
    'color': 'Pink'
  };
  //{key : value}

  print(mahouShoujo);
  print('-------------------------');

  //Print Key Value
  print(mahouShoujo['name']);
  print('-------------------------');

  //show Keys
  print(mahouShoujo.keys);
  print('-------------------------');

  //show Values
  print(mahouShoujo.values);
  print('-------------------------');

  //Contains
  print(mahouShoujo.containsKey('name'));
  print(mahouShoujo.containsKey('ability'));
  print(mahouShoujo.containsValue('Madoka'));
  print(mahouShoujo.containsValue('Meduka'));
  print('-------------------------');

  //lenght
  print(mahouShoujo.length);
  print('-------------------------');

  //Remove Key
  mahouShoujo.remove('color');
  print(mahouShoujo);

  //Change map Value
  mahouShoujo['name'] = 'Homura';
  print(mahouShoujo);
}
