part of 'pages.dart';

class SelectableBox extends StatelessWidget {
  final bool isSelected;
  final bool isEnabled;
  final double width;
  final double height;
  final String text;
  final Function onTap;
  final TextStyle textStyle;

  SelectableBox(this.text,
      {this.isSelected = false,
        this.isEnabled = true,
        @required this.width,
        @required this.height,
        this.onTap,
        this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: (!isEnabled)
                  ? Color(0xFFE4E4E4)
                  : isSelected ? greys : Colors.transparent,
              border: Border.all(
                  color: (!isEnabled)
                      ? Color(0xFFE4E4E4)
                      : isSelected ? Colors.transparent : Color(0xFFE4E4E4))),
          child: Center(
            child: Text(
              text ?? "None",
              style: (isSelected) ? TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16) : TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16)
            ),
          ),
        ));
  }
}
