var path = require('path');

var webpack = require('webpack');

var webpackProvidePlugin = webpack.ProvidePlugin;

var conf
  = { cache: true
    , entry: { index: './' }
    , output: { path: __dirname
              , filename: 'bundle.js'
              }
    , plugins: [ new webpackProvidePlugin({ React: 'react' }) ]
    , resolve: { modulesDirectories: [ 'node_modules'
                                     , 'output'
                                     ]
               }
    , resolveLoader: { root: path.join(__dirname, 'node_modules') }
    , module: { loaders: [ { test: /\.css$/, loader: 'style-loader!css-loader' }
                         , { test: /\.purs$/, loader: 'purs-loader' }
                         ] }
    }
    ;

module.exports = conf;
