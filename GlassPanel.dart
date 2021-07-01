class GlassPanel extends StatelessWidget {
  const GlassPanel({Key? key, required this.width, required this.height, required this.margin, required this.widget}) : super(key: key);
  final double margin;
  final double width, height;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: margin, spreadRadius: margin, color: Colors.black.withOpacity(0.1))]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(margin),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Container(
            width: width - margin * 2,
            height: height,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(margin),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white.withOpacity(0.2),
                )),
            child: Padding(
              padding: EdgeInsets.all(margin),
              child: widget,
            ),
          ),
          //child: Text('Card', style: TextStyle(color: Colors.white.withOpacity(0.75))),              )),
        ),
      ),
    );
  }
}
