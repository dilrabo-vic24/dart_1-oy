class UserProfile {
  String? name;
  String? email;
  int? age;

  UserProfile({
    this.name,
    this.email,
    this.age,
  });

  String get getProfilInfo{
    return "Name:  $name\nAge  ${age?? 'Age belgilanmagan'}\nEmail:  ${email?? 'email belginmagan'}";
    }
}

void main(){
  UserProfile user = UserProfile(name: "User1", age: 20);

  print(user.getProfilInfo);
}
