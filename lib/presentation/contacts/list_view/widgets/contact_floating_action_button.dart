import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ContactFloatingActionButton extends StatefulWidget {
  const ContactFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  _ContactFloatingActionButtonState createState() =>
      _ContactFloatingActionButtonState();
}

class _ContactFloatingActionButtonState
    extends State<ContactFloatingActionButton> with TickerProviderStateMixin {
  late AnimationController _controller;
  double _pos = 0;
  static const int fabSize = 70;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _controller.addListener(() {
      setState(() {
        _pos = _controller.drive(CurveTween(curve: Curves.easeOut)).value *
            fabSize;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      verticalDirection: VerticalDirection.up,
      children: [
        FloatingActionButton(
          heroTag: "fab",
          onPressed: () {
            if (_controller.isDismissed) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
          },
          child: RotationTransition(
            turns: _controller
                .drive(Tween(begin: 0.0, end: 0.125))
                .drive(CurveTween(curve: Curves.easeOut)),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
        _floatingAnimatedButton(
          heroTag: "contact_page",
          context: context,
          iconData: Icons.contact_page,
          onPressed: () {
            context
                .read<ContactWatcherBloc>()
                .add(const ContactWatcherEvent.deselectAllContacts());
            context.router.push(r.AddContactPageRoute());
          },
        ),
        _floatingAnimatedButton(
          heroTag: "note_add",
          context: context,
          iconData: Icons.note_add,
          onPressed: () {
            context
                .read<ContactWatcherBloc>()
                .add(const ContactWatcherEvent.deselectAllContacts());
            context.router.push(const r.AddDiaryPageRoute());
          },
        ),
      ],
    );
  }

  SizedBox _floatingAnimatedButton({
    required BuildContext context,
    required IconData iconData,
    required Function onPressed,
    Object? heroTag,
  }) {
    return SizedBox(
      height: _pos,
      child: ScaleTransition(
        scale: CurvedAnimation(
            parent: _controller,
            curve: const Interval(0, 1, curve: Curves.easeOut)),
        child: FloatingActionButton(
          heroTag: heroTag,
          onPressed: () {
            onPressed();
          },
          child: Icon(
            iconData,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    );
  }
}
