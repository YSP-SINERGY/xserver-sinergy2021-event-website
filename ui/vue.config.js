module.exports = {
    publicPath: process.env.NODE_ENV === 'production' ? '' : 'http://127.0.0.1:8080',
    pages: {
        index: {
            entry: 'src/main.js'
        }
    },
    devServer: {
        compress: true,
        disableHostCheck: true
    }    
}