import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import * as d3 from 'd3';


import * as topojson from "topojson-client";
import * as serviceWorker from './serviceWorker';
ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
const geoURL = "https://raw.githubusercontent.com/no-stack-dub-sack/testable-projects-fcc/master/src/data/choropleth_map/counties.json";

const m = {top: 40, right: 40, bottom: 40, left: 40}
const w = 1000 - m.right - m.left;
const h = 700 - m.top - m.bottom;

// Get SVG
const map = d3.select('#map');

map.attr('width', w)
   .attr('height', h)


// Map
const path = d3.geoPath();
const projection = d3.geoMercator()
    .scale(70)
    .center([0, 20])
    .translate([w / 2, h / 2]);

const data = d3.geoPath()

d3.json(geoURL).then(us => {
    const COUNTIES_JSON = topojson.feature(us, us.objects.counties).features;
    const STATES_JSON = topojson.feature(us, us.objects.states).features;

    let counties = map.selectAll('.county')
                      .data(COUNTIES_JSON)
                      .enter()
                      .append('path')
                      .attr('class', 'county')
                      .attr('d', path)
                      .attr('id', d => d.id);
    map.selectAll('.state')
        .data(STATES_JSON)
        .enter()
        .append('path')
        .attr('class', 'state')
        .attr('d', path);
})
