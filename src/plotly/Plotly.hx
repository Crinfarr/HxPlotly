package plotly;

import plotly.ext.Plotly.FrameDataT;
import js.html.Node;
import haxe.extern.EitherType;
private typedef ID = String;
class Plotly {
    var plotElement:Node;
    var data:FrameDataT;
    public function new(fromElement:EitherType<ID, Node>) {
        plotElement = plotly.ext.Plotly.newPlot(fromElement, data);
    }
    public function update() {
        plotElement = plotly.ext.Plotly.react(plotElement, data);
    }
}