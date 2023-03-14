    // The code below is injected by flutter web optimizer, do not edit!!!!!!
    
    // window.assetBase
    var assetBase = "./";
    
    // window.mainjsManifest
    var mainjsManifest = {
  "main.dart.js": "main.dart.eef3c5e9.js",
  "main.dart_0.js": "main.dart_0.2d90b929.js",
  "main.dart_1.js": "main.dart_1.57bfd086.js",
  "main.dart_2.js": "main.dart_2.da2f0a2b.js",
  "main.dart_3.js": "main.dart_3.3c76416c.js",
  "main.dart_4.js": "main.dart_4.426d65f0.js",
  "main.dart_5.js": "main.dart_5.6ae7e49e.js"
};
    
    // window.hashFileManifest
    var hashFileManifest = {
  "assets/AssetManifest.json": "assets/AssetManifest.99914b93.json",
  "assets/FontManifest.json": "assets/FontManifest.4f5cb03c.json",
  "assets/fonts/MaterialIcons-Regular.otf": "assets/fonts/MaterialIcons-Regular.95db9098.otf",
  "favicon.png": "favicon.5dcef449.png",
  "flutter.js": "flutter.10920ce5.js",
  "icons/Icon-192.png": "icons/Icon-192.ac9a721a.png",
  "icons/Icon-512.png": "icons/Icon-512.96e75261.png",
  "icons/Icon-maskable-192.png": "icons/Icon-maskable-192.c457ef57.png",
  "icons/Icon-maskable-512.png": "icons/Icon-maskable-512.301a7604.png",
  "main.dart.js": "main.dart.eef3c5e9.js",
  "main.dart_0.js": "main.dart_0.2d90b929.js",
  "main.dart_1.js": "main.dart_1.57bfd086.js",
  "main.dart_2.js": "main.dart_2.da2f0a2b.js",
  "main.dart_3.js": "main.dart_3.3c76416c.js",
  "main.dart_4.js": "main.dart_4.426d65f0.js",
  "main.dart_5.js": "main.dart_5.6ae7e49e.js",
  "manifest.json": "manifest.3ddfff60.json"
};
    
    // hook dynamic create element `src` `href` property
    (function(){
      var _defineProperty = function (element, property) {
        var value;
        Object.defineProperty(element, property, {
          get: function () {
            return value;
          },
          set: function (v) {
            value = v;
            if (v.startsWith('./')) {
              v = v.replace('./', '');
            }
            if (hashFileManifest[v]) {
              value = assetBase + hashFileManifest[v];
            }
            element.setAttribute(property, value);
          }
        })
  
        var _setAttribute = element.setAttribute;
        element.setAttribute = function () {
          var args = Array.prototype.slice.call(arguments);
          // if (args[0] === 'src') {
          //   //do something here
          //   console.log('setAttribute', args[1])
          // }
          _setAttribute.apply(element, args);
        }
      }
  
      var _createElement = document.createElement;
      var _hookProperties = {'link': 'href', 'script': 'src', 'audio': 'src', 'video': 'src', 'map': 'src', 'img': 'src'};
      document.createElement = function (tagName) {
        var element = _createElement.call(document, tagName);
        var property = _hookProperties[tagName.toLowerCase()];
        if (property) {
          _defineProperty(element, property);
        }
        return element;
      }  
    })();

    // load main.dart.js_xxx.part js
    function dartDeferredLibraryLoader(uri, successCallback, errorCallback, loadId) {
      console.info('uri: ' + uri + ', loadId: '+ loadId);
      var src;
      try {
        var url = new URL(uri);
        var key = url.pathname.replaceAll(/(.*)(main\.dart\.(.+)\.js)/g, '$2');
        src = assetBase + mainjsManifest[key];
      } catch (e) {
        var key = uri.replaceAll(/(.*)(main\.dart\.(.+)\.js)/g, '$2');
        src = assetBase + mainjsManifest[key];
      }
    
      var script = document.createElement("script");
      script.type = "text/javascript";
      script.src = src;
      script.addEventListener("load", successCallback, false);
      script.addEventListener("error", errorCallback, false);
      document.body.appendChild(script);
    }
    