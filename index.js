const AWS = require("aws-sdk");
const https = require("https");

exports.handler = async function(event, context) {
	console.log("Environment variables: ", process.env);
	console.log(event);
	console.log(context);
}