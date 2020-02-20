require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start();

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import flatpickr from "flatpickr";

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
  flatpickr("#flatpickr", {});
})
