import 'dart:io';

void main() {
  print("DNS Lookup Tool");

  while (true) {
    print("Enter a domain name (or 'quit' to exit):");
    String domain = stdin.readLineSync()!;

    if (domain.toLowerCase() == 'quit') {
      break;
    }

    try {
      InternetAddress address = InternetAddress.lookup(domain);
      print("IP Address: ${address.address}");
    } catch (e) {
      print("Error: $e");
    }
  }
}
