// Code imported from GitHub - https://github.com/fireship-io/docker-nodejs-basic-demo

// Full Video Tutorial on Docker + NodeJS - https://www.youtube.com/watch?v=gAkwW2tuIqE

const app = require('express')();

app.get('/', (req, res ) => 
    res.json({ message: 'Docker is easy 🐳' }) 
);

const port = process.env.PORT || 8080;

app.listen(port, () => console.log(`app listening on http://localhost:${port}`) );