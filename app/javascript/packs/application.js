require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start();

import "bootstrap";

// import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import flatpickr from "flatpickr";

document.addEventListener('turbolinks:load', () => {

  if (document.querySelector('#map')) initMapbox();
  if (document.querySelector('#bar_address')) initAutocomplete();
  if (document.querySelector("#flatpickr")) flatpickr("#flatpickr", {});

})


  window.addEventListener('DOMContentLoaded', () => {
  })

