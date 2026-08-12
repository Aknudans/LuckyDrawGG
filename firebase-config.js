// Configuración de Firebase para LuckyDrawGG.
//
// Cómo obtenerla (una sola vez, gratis):
// 1. Ve a https://console.firebase.google.com/ y crea un proyecto.
// 2. Dentro del proyecto: "Compilación" → "Firestore Database" → "Crear base de datos"
//    (elige modo producción, la región más cercana).
// 3. En Firestore → pestaña "Reglas", pega el contenido de firestore.rules.txt
//    (incluido en este repositorio) y publica.
// 4. En el panel principal del proyecto: icono "</>" (Agregar app web), regístrala
//    con cualquier nombre. Firebase mostrará un objeto `firebaseConfig`:
//    cópialo y pégalo abajo, reemplazando los valores de ejemplo.
//
// La apiKey de Firebase para apps web NO es secreta (está pensada para viajar
// en el cliente); lo que protege los datos son las reglas de Firestore del
// paso 3. Aun así, no subas este archivo con datos reales a un repo público
// sin revisar tus reglas primero.

export const firebaseConfig = {
  apiKey: "AIzaSyCbtxk-FZ9x1i_6PUYnRaMLJSjT3qjrQTM",
  authDomain: "luckydrawgg-a4112.firebaseapp.com",
  projectId: "luckydrawgg-a4112",
  storageBucket: "luckydrawgg-a4112.firebasestorage.app",
  messagingSenderId: "251417775582",
  appId: "1:251417775582:web:58acf272260b274a3ae14f",
  measurementId: "G-E4D9TXX3W5",
};
