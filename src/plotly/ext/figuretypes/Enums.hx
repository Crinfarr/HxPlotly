package plotly.ext.figuretypes;

import plotly.ext.figuretypes.UniversalTypes.FlagList;
import haxe.extern.EitherType;

enum abstract PlotType(String) {
	final Scatter = "scatter";
}

enum abstract VisibleState(EitherType<Bool, String>) {
	final state_True = true;
	final state_False = false;
	final state_LegendOnly = "LegendOnly";
}

enum abstract LinePosition(String) {
	final none;
	final under;
	final over;
	final through;

	@:op('+')
	private static inline function add(lpa:LinePosition, lpb:LinePosition):FlagList<LinePosition> {
		if ([lpa, lpb].contains(none))
			throw "Cannot add none to LinePosition";
		return '$lpa+$lpb';
	}
}

enum abstract FontStyle(String) {
	final normal;
	final italic;
}

enum abstract FontTextCase(String) {
	final normal;
	final word_caps = "word caps";
	final upper;
	final lower;
}

enum abstract FontVariant(String) {
	final normal;
	final small_caps = "small-caps";
	final all_small_caps = "all-small-caps";
	final all_petite_caps = "all-petite-caps";
	final petite_caps = "petite-caps";
	final unicase = "unicase";
}

enum abstract FigureMode(String) {
	final lines;
	final markers;
	final text;
	final none;

	@:op('+')
	private static inline function add(fma:FigureMode, fmb:FigureMode):FlagList<FigureMode> {
		if ([fma, fmb].contains(none))
			throw "Cannot add none to FigureMode";
		return '$fma+$fmb';
	}
}

enum abstract TextPosition(String) {
	final topleft = "top left";
	final topmiddle = "top middle";
	final topright = "top right";

	final middleleft = "middle left";
	final middlecenter = "middle center";
	final middleright = "middle right";

	final bottomleft = "bottom left";
	final bottommiddle = "bottom middle";
	final bottomright = "bottom right";
}

enum abstract HoverInfo(String) {
	final x;
	final y;
	final z;
	final text;
	final name;
	final all;
	final none;
	final skip;

	@:op("+")
	private static inline function add(hia:HoverInfo, hib:HoverInfo):FlagList<HoverInfo> {
		if ([hia, hib].filter((h) -> {
			return [all, skip, none].contains(h);
		}).length > 0)
			throw 'Invalid add operator $hia+$hib';
		return '$hia+$hib';
	}
}

enum abstract Orientation(String) {
	final Vertical = "v";
	final Horizontal = "h";
}

enum abstract GroupNorm(String) {
	final none = "";
	final fraction;
	final percent;
}

enum abstract PeriodAlignment(String) {
	final start;
	final middle;
	final end;
}

enum abstract AngleRef(String) {
	final previous;
	final up;
}

enum abstract ExponentFormat(String) {
	final none;
	final e;
	final E;
	final power;
	final SI;
	final B;
}

enum abstract MeasureMode(String) {
	final fraction;
	final pixels;
}

enum abstract TShow(String) {
	final all;
	final first;
	final last;
	final none;
}

enum abstract TickLabelOverflow(String) {
	final allow;
	final beforediv = "hide past div";
	final beforedomain = "hide past domain";
}

enum abstract EdgePosition(String) {
	final outside;
	final inside;
	final outsidetop = "outside top";
	final outsideleft = "outside left";
	final outsideright = "outside right";
	final outsidebottom = "outside bottom";
	final insidetop = "inside top";
	final insideleft = "inside left";
	final insideright = "inside right";
	final insidebottom = "inside bottom";
}
enum abstract TickMode(String) {
    final auto;
    final linear;
    final array;
}
enum abstract TickPos(String) {
    final outside;
    final inside;
}
enum abstract TitleSide(String) {
    final right;
    final top;
    final bottom;
}
enum abstract AnchorPos(String) {
    final left;
    final center;
    final right;
}
enum abstract TRef(String) {
    final container;
    final paper;
}
enum abstract GradientType(String) {
    final radial;
    final horizontal;
    final vertical;
    final none;
}