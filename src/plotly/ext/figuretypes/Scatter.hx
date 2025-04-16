package plotly.ext.figuretypes;

import plotly.ext.figuretypes.UniversalTypes.TMarker;
import plotly.ext.figuretypes.Enums.PeriodAlignment;
import plotly.ext.figuretypes.Enums.GroupNorm;
import plotly.ext.figuretypes.Enums.Orientation;
import plotly.ext.figuretypes.Enums.HoverInfo;
import plotly.ext.figuretypes.Enums.TextPosition;
import plotly.ext.figuretypes.UniversalTypes.FlagList;
import haxe.extern.EitherType;
import haxe.ds.Either;
import plotly.ext.figuretypes.Enums.FigureMode;
import plotly.ext.figuretypes.Enums.VisibleState;
import plotly.ext.figuretypes.Enums.PlotType;
import plotly.ext.figuretypes.UniversalTypes.JSNumber;
import plotly.ext.figuretypes.UniversalTypes.TextDefinition;

typedef Scatter<XDataT, YDataT> = {
	type:PlotType, // ===PlotType.Scatter
	name:String,
	visible:VisibleState,
	showlegend:Bool,
	legend:String, // === "legend", "legend2", ..., "legendN"
	legendrank:JSNumber,
	legendgroup:String,
	legendgrouptitle:TextDefinition,
	legendwidth:JSNumber,
	opacity:JSNumber,
	mode:EitherType<FigureMode, FlagList<FigureMode>>,
	ids:Array<String>,
	zorder:Int,
	x:Array<XDataT>,
	x0:XDataT,
	dx:XDataT,
	y:Array<YDataT>,
	y0:YDataT,
	dy:YDataT,
	text:EitherType<String, Array<String>>,
	textposition:TextPosition,
	texttemplate:EitherType<String, Array<String>>,
	hovertext:EitherType<String, Array<String>>,
	hoverinfo:EitherType<HoverInfo, FlagList<HoverInfo>>,
	hovertemplate:EitherType<String, Array<String>>,
	xhoverformat:String,
	yhoverformat:String,
	meta:Array<Dynamic>,
	customdata:Array<Any>,
	xaxis:String, // === "x", "x2", ..., "xN"
	yaxis:String, // === "y", "y2", ..., "yN"
    orientation:Orientation,
    groupnorm: GroupNorm,
    alignmentgroup:String,
    offsetgroup: String,
    stackgroup:String,
    xperiod:XDataT,
    xperiodalignment:PeriodAlignment,
    xperiod0:XDataT,
    yperiod:YDataT,
    yperiodalignment:PeriodAlignment,
    yperiod0:YDataT,
    marker:TMarker
}
