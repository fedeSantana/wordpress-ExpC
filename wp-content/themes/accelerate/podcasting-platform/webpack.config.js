const path = require('path');

module.exports = {
  devtool: false,
  module: {
    rules: [
      {
        test: /\.html$/i,
        loader: 'html-loader',
      },
      {
        test: /\.js$/,
        exclude: "/node_modules/",
        use: ["babel-loader"]
      },
    ]
  },
  mode: 'development',
  entry: ['regenerator-runtime/runtime.js', './index.js'],
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
  }
};