part of responsive_svg_icons;

class _ResponsiveSvgIconData extends ResponsiveSvgIconData {
  _ResponsiveSvgIconData(String name, {bool? reflectable, bool? reflected})
      : super({
          48: 'assets/s/$name.svg',
          128: 'assets/m/$name.svg',
          999999: 'assets/l/$name.svg'
        },
            package: 'responsive_svg_icons',
            reflectable: reflectable,
            reflected: reflected);
}
