module.exports = {
	entry: './index.js',
	output: {
		filename: 'bundle.js',
		path: __dirname + '/dist'
	},
	module: {
		rules: [
			{
				test: /\.scss$/,
				exclude: /node_module/,
				use: [ "style-loader", "css-loader", "sass-loader" ],
			},
			{
				test: /\.css$/,
				exclude: /node_module/,
				use: [ "style-loader", "css-loader"],
			},
			{
				test: /\.js$/,
				exclude: /node_module/,
				use: [ "babel-loader" ],
			},
		]
	},
}