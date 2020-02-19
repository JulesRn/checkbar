require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start();
// require 'simple_calendar'

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
})
