module.exports = {
  extends: [
    "eslint-config-airbnb-base",
    "plugin:prettier/recommended",
    "./.eslintrc.custom.js",
  ],

  env: {
    browser: true,
  },

  parser: "babel-eslint",

  settings: {
    "import/resolver": {
      webpack: {
        config: {
          resolve: {
            modules: ["frontend", "node_modules"],
          },
        },
      },
    },
  },
};
