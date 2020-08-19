// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within frontend and only use these pack files to reference
// that code so it'll be compiled.

// Vendors: third-party libraries, etc.

import "bootstrap";
import "../vendor/fontawesome";
import "../vendor/nested_form_fields";

// Own components

import "init";
import "components/wish-list-items/wish-list-items";

// Rails dependencies

require("@rails/ujs").start();
require("@rails/activestorage").start();
require("channels");
require("turbolinks").start();

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
