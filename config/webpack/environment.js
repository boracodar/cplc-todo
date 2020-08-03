const { environment } = require("@rails/webpacker");
const webpack = require("webpack");

// Get a pre-configured plugin
const manifestPlugin = environment.plugins.get("Manifest");
manifestPlugin.options.writeToFileEmit = false;

// Add an additional plugin of your choosing : ProvidePlugin
environment.plugins.prepend(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    jquery: "jquery",
    Popper: ["popper.js", "default"],
  })
);

module.exports = environment;
