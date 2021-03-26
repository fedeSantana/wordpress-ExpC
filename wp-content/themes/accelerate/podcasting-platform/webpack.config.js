const path = require('path');

// webpack assets tutorial https://www.taniarascia.com/how-to-use-webpack/

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
      // Images      
      {
        test: /\.(?:ico|gif|png|jpg|jpeg)$/i,
        type: 'asset/resource',
      },
      // Svgs
      { 
        test: /\.(woff(2)?|eot|ttf|otf|svg|)$/, 
        type: 'asset/inline', 
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