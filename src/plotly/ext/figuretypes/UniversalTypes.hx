package plotly.ext.figuretypes;

import plotly.ext.figuretypes.Enums.GradientType;
import plotly.ext.figuretypes.Enums.TRef;
import plotly.ext.figuretypes.Enums.AnchorPos;
import plotly.ext.figuretypes.Enums.TitleSide;
import plotly.ext.figuretypes.Enums.TickPos;
import plotly.ext.figuretypes.Enums.TickMode;
import plotly.ext.figuretypes.Enums.EdgePosition;
import plotly.ext.figuretypes.Enums.TickLabelOverflow;
import plotly.ext.figuretypes.Enums.TShow;
import plotly.ext.figuretypes.Enums.Orientation;
import plotly.ext.figuretypes.Enums.MeasureMode;
import plotly.ext.figuretypes.Enums.ExponentFormat;
import plotly.ext.figuretypes.Enums.AngleRef;
import plotly.ext.figuretypes.Enums.FontVariant;
import plotly.ext.figuretypes.Enums.FontTextCase;
import plotly.ext.figuretypes.Enums.LinePosition;
import plotly.ext.figuretypes.Enums.FontStyle;
import haxe.extern.EitherType;

typedef JSNumber = Float;
typedef FlagList<T> = String;

typedef TFont = {
	color:String,
	family:String,
	lineposition:EitherType<LinePosition, String>,
	shadow:String, // https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow
	size:JSNumber, // >=1
	style:FontStyle,
	textcase:FontTextCase,
	variant:FontVariant,
	weight:EitherType<JSNumber, String>, // [1,1000] or "Normal"
}

typedef TextDefinition = {
	font:TFont,
	text:String
}
typedef TFStops = {
    dtickrange:Array<JSNumber>,
    enabled:Bool,
    name:String,
    templateitemname:String,
    value:String,
}
typedef TTitle = {
    font:TFont,
    side:TitleSide,
    text:String,
}

typedef TColorBar = {
	bgcolor:String,
	bordercolor:String,
	borderwidth:JSNumber,
	dtick:EitherType<String, JSNumber>,
	exponentformat:ExponentFormat,
	labelalias:EitherType<String, JSNumber>,
	len:JSNumber,
	lenmode:MeasureMode,
	minexponent:JSNumber,
	nticks:JSNumber,
	orientation:Orientation,
	outlinecolor:String,
	outlinewidth:JSNumber,
	separatethousands:Bool,
	showexponent:TShow,
	showticklabels:Bool,
	showtickprefix:TShow,
	showticksuffix:TShow,
	thickness:JSNumber,
	thicknessmode:MeasureMode,
	tick0:EitherType<String, JSNumber>,
	tickangle:EitherType<String, JSNumber>,
	tickcolor:String,
	tickfont:TFont,
    tickformat:String,
    tickformatstops:TFStops,
    ticklabeloverflow:TickLabelOverflow,
    ticklabelposition:EdgePosition,
    ticklabelstep:Int,
    ticklen:JSNumber,
    tickmode:TickMode,
    tickprefix:String,
    ticks:TickPos,
    ticksuffix:String,
    ticktext:Array<String>,
    tickvals:Array<EitherType<String, JSNumber>>,
    tickwidth:JSNumber,
    title:TTitle,
    x:JSNumber,
    xanchor:AnchorPos,
    xpad:JSNumber,
    xref:TRef,
    y:JSNumber,
    yanchor:AnchorPos,
    ypad:JSNumber,
    yref:AnchorPos,
}
typedef TGradient = {
    color:String,
    type:GradientType,
}
typedef TLine = {
    autocolorscale:Bool,
    cauto:Bool,
    cmax:JSNumber,
    //TODO START HERE
	// https://plotly.com/javascript/reference/#scatter-marker-line-cmax
}
typedef TMarker = {
	angle:JSNumber,
	angleref:AngleRef,
	autocolorscale:Bool,
	cauto:Bool,
	cmax:JSNumber,
	cmid:JSNumber,
	cmin:JSNumber,
	color:EitherType<String, Array<String>>,
	coloraxis:String,
	colorbar:TColorBar,
    gradient:TGradient,
    line:TLine
}
