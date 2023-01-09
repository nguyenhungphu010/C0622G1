// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: false,
  api_url: 'http://localhost:8080/api/',
  firebaseConfig : {
    apiKey: 'AIzaSyAmeEHk2wtvdCTG_roCAZD_R52yNBpZmdE',
    authDomain: 'sprint-2-coffe-sh.firebaseapp.com',
    projectId: 'sprint-2-coffe-sh',
    storageBucket: 'sprint-2-coffe-sh.appspot.com',
    messagingSenderId: '267333969727',
    appId: '1:267333969727:web:8ec0a00b2be14f2bbb158a',
    measurementId: 'G-7KN6WNP5ZZ'
  }
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.
