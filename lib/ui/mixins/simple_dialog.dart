import 'package:fluent_ui/fluent_ui.dart';

mixin SimpleDialogMixin<T extends StatefulWidget> on State<T> {
  Future<void> showSimpleDialog(
    BuildContext context,
    String title,
    String content,
  ) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: true,
      builder: (context) => ContentDialog(
        title: Text(title),
        content: Text(content),
        // actions: [
        //   Button(
        //     child: const Text('Delete'),
        //     onPressed: () {
        //       Navigator.pop(context, 'User deleted file');
        //       // Delete file here
        //     },
        //   ),
        //   FilledButton(
        //     child: const Text('Cancel'),
        //     onPressed: () => Navigator.pop(context, 'User canceled dialog'),
        //   ),
        // ],
      ),
    );
    setState(() {});
  }
}
