const { initializeApp } = require('firebase/app');
const { getStorage } = require('firebase/storage');

const {
  API_KEY_FB,
  AUTH_DOMAIN_FB,
  PROJECT_ID_FB,
  STORAGE_BUCKET_FB,
  MESSAGING_SENDER_ID_FB,
  APP_ID_FB,
  MEASUREMENT_ID,
} = process.env;

//Se incializa Firebase

const firebaseConfig = {
  apiKey: API_KEY_FB,
  authDomain: AUTH_DOMAIN_FB,
  projectId: PROJECT_ID_FB,
  storageBucket: STORAGE_BUCKET_FB,
  messagingSenderId: MESSAGING_SENDER_ID_FB,
  appId: APP_ID_FB,
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const storage = getStorage(app);

//const storageBucket = app.storage().bucket();

module.exports = { app, storage };
