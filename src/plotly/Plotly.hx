package plotly;

import plotly.ext.figuretypes.Enums.PlotType;
import js.html.DivElement;
import plotly.ext.Plotly.FrameDataT;
import js.html.Node;
import haxe.extern.EitherType;


private typedef GraphDivRef = EitherType<String, DivElement>;
class Plotly {
    var plotElement:Node;
    var data:FrameDataT;
    public function new(fromElement:GraphDivRef) {
        plotElement = plotly.ext.Plotly.newPlot(fromElement, data);
    }
    public function update() {
        plotElement = plotly.ext.Plotly.react(plotElement, data);
    }
}