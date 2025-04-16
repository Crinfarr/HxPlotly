package test;

import plotly.Plotly;
import js.Browser;

class Main {
    static function main() {
        final targetDiv = Browser.document.createDivElement();
        targetDiv.style.width = "100vw";
        targetDiv.style.height = "100vh";
        final plot = new Plotly(targetDiv);
    }
}