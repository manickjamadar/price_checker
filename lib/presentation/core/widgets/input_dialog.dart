import 'package:flutter/material.dart';

class InputDialog extends StatefulWidget {
  final String title;
  final String hint;
  final String initialValue;
  final TextInputType keyboardType;

  const InputDialog(
      {Key key,
      @required this.title,
      @required this.hint,
      this.initialValue = "",
      this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  _InputDialogState createState() => _InputDialogState();
}

class _InputDialogState extends State<InputDialog> {
  TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
            autofocus: true,
            decoration: InputDecoration(labelText: widget.hint),
            keyboardType: widget.keyboardType,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                child: Text("Cancel"),
                onPressed: () => _onCancel(),
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () => _onDone(),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _onCancel() {
    Navigator.pop(context);
  }

  void _onDone() {
    if (_controller.text.isEmpty) {
      return;
    }
    Navigator.pop(context, _controller.text);
  }
}
