const path = require('path');
const { VueLoaderPlugin } = require('vue-loader');
const compiler = require('vue-template-compiler');
// webpack assets tutorial https://www.taniarascia.com/how-to-use-webpack/

module.exports = {
  devtool: false,
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader',
      },
      // HTML fede experiment
      {
        test: /\.fede$/,
        oneOf: [
          // this applies to <template lang="pug"> in Vue components
          {
            resourceQuery: /^\?vue/,
            use: ['babel-loader'],
          },
          // this applies to pug imports inside JavaScript
          {
            use: ['babel-loader'],
          },
        ],
      },
      // this will apply to both plain `.js` files
      // AND `<script>` blocks in `.vue` files
      {
        test: /\.js$/,
        use: ['babel-loader', 'eslint-loader'],
      },
      // this will apply to both plain `.css` files
      // AND `<style>` blocks in `.vue` files
      {
        test: /\.css$/,
        use: [
          'vue-style-loader',
          'css-loader',
        ],
      },
      {
        test: /\.(?:ico|gif|png|jpg|jpeg)$/i,
        type: 'asset/resource',
      },
      // Svgs
      {
        test: /\.(woff(2)?|eot|ttf|otf|svg|)$/,
        type: 'asset/inline',
      },
    ],
  },
  plugins: [
    // make sure to include the plugin!
    new VueLoaderPlugin(),
  ],
  mode: 'development',
  entry: ['regenerator-runtime/runtime.js', './src/index.vue'],
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
  },
};
