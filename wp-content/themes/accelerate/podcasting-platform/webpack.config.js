const path = require('path');

module.exports = {
  devtool: false,
  mode: 'development',
  entry: './index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'assets'),
  }
};