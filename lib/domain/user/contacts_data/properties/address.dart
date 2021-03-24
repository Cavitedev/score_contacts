class Address{
  String? address;
  String? labelAddress;

  Address({this.address, this.labelAddress});


  @override
  String toString() {
    return 'Address{address: $address, labelAddress: $labelAddress}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          address == other.address &&
          labelAddress == other.labelAddress;

  @override
  int get hashCode => address.hashCode ^ labelAddress.hashCode;
}