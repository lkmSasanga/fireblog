import firebase from "firebase/app";
import "firebase/firestore";

var firebaseConfig = {
  apiKey: "AIzaSyCXijZSqAWhW_5HNQIdy7zuinDh4_JtP0s",
  authDomain: "fireblogs-vuejs.firebaseapp.com",
  projectId: "fireblogs-vuejs",
  storageBucket: "fireblogs-vuejs.appspot.com",
  messagingSenderId: "378207530204",
  appId: "1:378207530204:web:67b3687f234a6250b3d819",
};

const firebaseApp = firebase.initializeApp(firebaseConfig);
const timestamp = firebase.firestore.FieldValue.serverTimestamp;

export { timestamp };
export default firebaseApp.firestore();
