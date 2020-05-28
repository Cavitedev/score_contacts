class Email{
  String email;
  String emailLabel;

  Email({this.email, this.emailLabel});


  @override
  String toString() {
    return 'Email{email: $email, emailLabel: $emailLabel}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Email &&
          runtimeType == other.runtimeType &&
          email == other.email &&
          emailLabel == other.emailLabel;

  @override
  int get hashCode => email.hashCode ^ emailLabel.hashCode;
}

