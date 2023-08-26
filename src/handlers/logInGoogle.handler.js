const passport = require('passport');
require('../middleware/passport');
const loginController = require('../controllers/logInGoogle.controller');
const dotenv = require('dotenv');
dotenv.config();
//const { URL_DEPLOY_FRONT } = process.env;
const URL_DEPLOY_FRONT = 'http://localhost:3000';
/*'https://front-5w36mp77c-garridomartin.vercel.app/';*/

const logInGoogleHandler = (req, res) => {
  res.send(
    "<button><a href='/loginGoogle/auth'>Login With Google</a></button>"
  );
};

const authenticateHandler = passport.authenticate('google', {
  scope: ['email', 'profile'],
});

const authCallbackHandler = passport.authenticate('google', {
  successRedirect: '/loginGoogle/auth/callback/success',
  failureRedirect: '/loginGoogle/auth/callback/failure',
});

const loginSuccessHandler = async (req, res) => {
  try {
    if (!req.user) {
      res.redirect('/loginGoogle/auth/callback/failure');
      return;
    }

    const dataUser = req.user;
    //console.log('dataUser:', dataUser);
    const { id, User_id, displayName, email, photos } = req.user;
    const newUser = await loginController.loginController(dataUser);

    //console.log('datauser linea 42 google handler:', dataUser);
    //console.log('Nuevo usuario agregado 35:', newUser);
    const updatedFrontUser = {
      //User_id: newUser.updatedDataUser.User_id,
      //idGoogle: newUser.updatedDataUser.id,
      isAuthenticated: true,
      username: newUser.userName,
      name: newUser.updatedDataUser.displayName,
      email: newUser.updatedDataUser.email,
      profilePict: newUser.updatedDataUser.picture,
      isAdmin: newUser.updatedDataUser.isAdmin,
      isSeller: newUser.updatedDataUser.isSeller,
      // token: newUser.token.token,
    };
    console.log(updatedFrontUser);
    //res.cookie('user', JSON.stringify(updatedFrontUser));
    res.cookie('token', newUser.token.token);
    res.json(updatedFrontUser);
    /*res.status(200).send(`
      <script>
        window.opener.postMessage(${JSON.stringify(updatedFrontUser)}, 
        '${URL_DEPLOY_FRONT}');
        window.close();
      </script>
    `);*/
  } catch (error) {
    console.error('ALERTA:', error);
    // Respondo si el usuario existe.
  }
};

const loginFailureHandler = (req, res) => {
  res.send('Error');
};

const getLogoutHandler = function (req, res, next) {
  req.session.user = null;
  req.session.save(function (err) {
    if (err) {
      // Manejo de errores al guardar la sesión
      return next(err);
    }
    // destroy the session and remove the session cookie
    req.session.destroy(function (err) {
      if (err) {
        // Manejo de errores al destruir la sesión
        return next(err);
      }
      // redirect to the root URL after logout
      res.redirect('https://mail.google.com/mail/u/0/?logout&hl=en');
    });
  });
};

module.exports = {
  logInGoogleHandler,
  authenticateHandler,
  authCallbackHandler,
  loginSuccessHandler,
  loginFailureHandler,
  getLogoutHandler,
};
