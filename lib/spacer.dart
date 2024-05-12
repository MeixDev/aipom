import 'package:fluent_ui/fluent_ui.dart';

const smallSpacer = Spacer(height: 8);
const mediumSpacer = Spacer(height: 16);
const largeSpacer = Spacer(height: 24);

const tinyHorizontalSpacer = Spacer(width: 4);
const smallHorizontalSpacer = Spacer(width: 8);
const mediumHorizontalSpacer = Spacer(width: 16);
const largeHorizontalSpacer = Spacer(width: 24);

class Spacer extends StatelessWidget {
  const Spacer({super.key, this.height = 0, this.width = 0});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
