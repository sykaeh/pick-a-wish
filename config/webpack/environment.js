/* eslint-disable import/no-extraneous-dependencies */

const { environment } = require("@rails/webpacker");
const webpack = require("webpack");

environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"],
  })
);

["css", "moduleCss"].forEach((loaderName) => {
  const loader = environment.loaders.get(loaderName);

  loader.test = /\.(p?css)$/i;

  environment.loaders.insert(loaderName, loader);
});

module.exports = environment;
