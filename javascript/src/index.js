import R2DeckGL from "./r2deckgl";
import {x} from "./data/x-hexagon-layer";

global.HTMLWidgets = {};

var el = document.getElementById("widget");
var r2DeckGL = new R2DeckGL(el);
// el.innerHTML = r2DeckGL.renderValue(x);
r2DeckGL.renderValue(x);
