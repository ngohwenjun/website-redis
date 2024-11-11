const express = require("express");
const redis = require("redis");

const app = express();
const client = redis.createClient({
	  host: "redis-stack",
	  port: 6379,
});


// client.set("visits", 0);

app.get("/", (req, res) => {
	  client.get("visits", (err, visits) => {
		      res.send(`You are the ${visits}th visitor!`);
		      client.set("visits", parseInt(visits) + 1);
		    });
});

app.listen(9092, () => {
	  console.log("Server is running on port 9092");
});
