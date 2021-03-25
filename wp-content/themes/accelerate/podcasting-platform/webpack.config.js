const path = require('path');

module.exports = {
  devtool: false,
  module: {
    rules: [
      {
        test: /\.html$/i,
        loader: 'html-loader',
      },
    ]
  },
  mode: 'development',
  entry: './index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
  }
};