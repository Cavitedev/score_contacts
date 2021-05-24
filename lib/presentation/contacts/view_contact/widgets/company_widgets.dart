import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';

List<Widget> listCompanyWidget({
  required List<Company>? companies,
}) {
  if (companies == null) {
    return [];
  }
  return companies
      .where((co) => !co.isEmpty())
      .map((co) => CompanyWidget(
            company: co,
          ))
      .toList();
}

class CompanyWidget extends StatelessWidget {
  final Company company;

  const CompanyWidget({
    required this.company,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${company.title} • ${company.name} "),
      leading: _icon(context),
    );
  }

  Widget _icon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        Icons.business,
        size: IconTheme.of(context).size ?? 32,
      ),
    );
  }
}
