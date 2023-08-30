/* ===================================================
    Date: 2023-08-22 21:05:23
    Desc: Logout handler
    Author: 🟣 Enoc Lima
=====================================================*/


require('dotenv').config();
const { OAuth2Client } = require('google-auth-library');
const axios = require('axios');


const postGoogleOAuth = async (req, res, next) => {

    const redirectURL = `${process.env.SERVER_URL}`;

    const oAuthClient = new OAuth2Client(
        process.env.GOOGLE_CLIENT_ID,
        process.env.GOOGLE_CLIENT_SECRET,
        redirectURL
    );

    const authorizeURL = oAuthClient.generateAuthUrl({
        access_type: 'offline',
        scope: 'https://www.googleapis.com/auth/userinfo.profile email openid',
        prompt: 'consent',
    });

    res.json({url: authorizeURL});
};


const getGoogleOAuth = async (req, res, next) => {

    const code = req.query.code;

    try {
        const redirectURL = `${process.env.SERVER_URL}`;
        const oAuthClient = new OAuth2Client(
            process.env.GOOGLE_CLIENT_ID,
            process.env.GOOGLE_CLIENT_SECRET,
            redirectURL
        );

        const { tokens } = await oAuthClient.getToken(code);
        await oAuthClient.setCredentials(tokens);
        
        console.log('tokens:', tokens);
        const user = OAuth2Client.credentials;

        console.log('credentials:', user);
        await getUserData(tokens.access_token);
    }catch (error) {
        console.error('Error in getGoogleOAuth: -----> line 55 in googleOAoutHandler.js', error);
    }
};



async function getUserData(accessToken){
    const response = await axios.get(`https://www.googleapis.com/oauth2/v3/userinfo?access_token=${accessToken}`);
    const data = await response.data;
    console.log('data ---->:',data);
    return data;
}


module.exports = {
    postGoogleOAuth,
    getGoogleOAuth
}