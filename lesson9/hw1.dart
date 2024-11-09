String phoneNumber(String? phoneNumber) {
  return "Phone number: ${phoneNumber ?? "Phone number is not available"}";
}

void main() {
  print(phoneNumber(null));
  print(phoneNumber("+998901234567"));
}
