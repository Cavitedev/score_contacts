import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/sign_in/bloc.dart';
import 'package:scorecontacts/presentation/contacts/contact_list.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc,SignInState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoadedSignInState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactList()));
          return Container();
        } else if (state is InitialSignInState) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Sign IN"),
                Text(
                  "📝",
                  style: TextStyle(fontSize: 140),
                ),
                const SizedBox(
                  height: 20,
                ),
                Spacer(),
                FlatButton.icon(
                  onPressed: () {
                    context.bloc<SignInBloc>().add(SignInWithGoogle());
                  },
                  icon: Icon(Icons.email),
                  label: Text("Sign In with Google"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
