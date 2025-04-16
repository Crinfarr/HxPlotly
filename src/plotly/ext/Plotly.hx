package plotly.ext;

import haxe.extern.EitherType;
import js.html.Node;

typedef FrameDataT = {
	data:Array<Any>,
	layout:{},
	config:{},
	frames:Array<Any>
}

@:native("Plotly")
extern class Plotly {	
    overload public static extern function newPlot(node:EitherType<Node, String>, data:Array<Any>, layout:{}, config:{}):Node;
    overload public static extern function newPlot(node:EitherType<Node, String>, obj:FrameDataT):Node;
	overload public static extern function react(node:EitherType<Node, String>, data:Array<Any>, layout:{}, config:{}):Node;
	overload public static extern function react(node:EitherType<Node, String>, obj:FrameDataT):Node;

}
