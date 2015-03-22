var path = require('path');

var webpack = require('webpack');

var providePlugin = webpack.ProvidePlugin;

var htmlPlugin = require('html-webpack-plugin');

var config
  = { cache: true
    , debug: true
    , entry: { index: './' }
    , output: { path: __dirname
              , pathinfo: true
              , filename: 'bundle.js'
              }
    , plugins: [ new providePlugin({ React: 'react' })
               , new htmlPlugin({ title: 'ReactF • TodoMVC' })
               ]
    , module: { loaders: [ { test: /\.css$/, loader: 'style-loader!css-loader' }
                         , { test: /\.purs$/, loader: 'purs-loader' }
                         ] }
    , resolve: { modulesDirectories: [ 'node_modules'
                                     , 'output'
                                     ]
               }
    , resolveLoader: { root: path.join(__dirname, 'node_modules') }
    }
    ;

module.exports = config;
