module.exports = {
    devServer: {
        port: 80,
        proxy: 'http://localhost:8088',
    },
    lintOnSave: false
}