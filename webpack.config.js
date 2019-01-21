var path = require('path');

module.exports = {
    entry: path.join(__dirname, 'srcjs', 'react_color.js'),
    output: {
        path: path.join(__dirname, 'inst', 'htmlwidgets'),
        filename: 'react_color.js'
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                loader: 'babel-loader',
                options: {
                    presets: ['@babel/preset-env', '@babel/preset-react']
                }
            }
        ]
    },
    externals: {
        'react': 'window.React',
        'react-dom': 'window.ReactDOM',
        'reactR': 'window.reactR'
    },
    stats: {
        colors: true
    },
    devtool: 'source-map'
};
