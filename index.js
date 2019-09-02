// Set the server to listen on 8080 and define the server's response as a 'hello' string 
// (For use in docker demo section 4 https://www.udemy.com/docker-and-kubernetes-the-complete-guide/learn/lecture/11436946#questions)

const express = require('express');     // require express library

const app = express();

// Send this string as a response to root URL request
app.get('/', (request, response) => {
    response.send('Finally: Howdy there');
});

// Listen on port 8080
app.listen(8080, () =>
{
    console.log('Listening on port 8080');
});