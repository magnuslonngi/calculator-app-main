'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "5d6e2ef92b4da340e9e501f7b73b1692",
"index.html": "9960dc9c201df946d39a435243524e53",
"/": "9960dc9c201df946d39a435243524e53",
"main.dart.js": "a5363535ec0e8bed9dc48b83fa095b5e",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "17edb3928b320d8f358f3c541bafa3f3",
".git/config": "04883e62dfcde5253b93c2941bbe86c3",
".git/objects/59/fd8a93e55284d1a1f32a6b495a198c9c461e74": "6f63a71f0b4f6040bc3324d94369f9e0",
".git/objects/3b/09d06e967f45164dc5c69626bb19c013736df3": "51400b136e39e9ebb5f3caeb52757efa",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/93/d0b20cabfd00cc373da3f3916c3d8fb810eb54": "ba88e6bea3274c8d40091228e1a5f945",
".git/objects/33/044ba618e334db6705fd8c24b6973daa637c5d": "4b1572d1bff2033a52c78f909cd4db5f",
".git/objects/9d/5f886353dcff6c222439cc1118e77eb1b007ea": "a87ff240c6e149d1ce495643e49417f9",
".git/objects/b2/0827af3a2fb7c222ef872f0b4cff94bb2b6cc7": "aa14050ea32b26666cbf0afc773f956f",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/be/17d74268262d809316dee45f3af2fcf3b372a0": "0c7e144cc86f4f0cd4aa2c7153ecadf4",
".git/objects/b3/78ce68c7eeed5e1df553787daf4012d5451c09": "9348a988f9b524e5560497d0e1fb1ef7",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/da/4037ccc51a2fed61d1c94ee428ccee1f521184": "f30733aa66fccd19e2cbf3b06cbe59e7",
".git/objects/bd/6395da95b1c210c5ddfe88132904a0ea0487f7": "2ef24559603139acd12c285e06318ebd",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e2/ff5865b192241d53935e77de70a4e6dff2847a": "cad1058aedc6c21a518b3cb00af21fac",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/eb/0d3d27d84e0dbe5f18720e73bef778c2630678": "cbd10419c949ea0543c7f2639e41b072",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/objects/fd/b4f4a2d68a6faced07a4f225fb98e73c41fbdb": "6545ceb7fb0bb07b5b262282d730f652",
".git/objects/f5/94337b05f5905682a9fc5563024cf91c12086a": "253dee81a2ca6f1ee86bc7f91de79422",
".git/objects/c1/94f122819048ab582cac8cb76c3510460003aa": "5b58c5c9cc71aab5abb5926ff6dfe1aa",
".git/objects/4b/8c49b730c6b83229bb4cba5b252641db5672fc": "4e611e0f609905268ec7b7a24ef364db",
".git/objects/7d/ceb2c52098d69e3223c8b8e2d1aa4dc71724f2": "7c07d03e63232a9fcf4e358187bd9da0",
".git/objects/73/6d5edb14c32044cf45bbbc00b1acf760140f91": "cad8d415bf1156bb70da1842568520f3",
".git/objects/17/9fb4f638553fd55bfb829bd653a4881e6121ba": "5721da1831b418ae939cbb62f1e39e01",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/d41123112dcc05e645c65693277074ac106233": "3de645de309caa9346a728f03e403fdd",
".git/objects/10/3802665a9c89f708b46c7436d627a31a75a0c4": "5096abed4aaa9d5a377abba1bd9daa76",
".git/objects/4c/218a8451b8a5ee008d20ef8d113cb575f4bca4": "4d92bce97a6976e7379a85654e08a271",
".git/objects/2f/6099633e6b4e7e379a15c319f02e64554a59e8": "b1273b334a3f59f647d33bcc5308c762",
".git/objects/43/2388a9dff42406eddc9828fe8a953f7c4f311d": "21663731d3cd696dd8735121761aafa8",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6e/21d559e585318f49738999cac5d2e08cf1dc47": "ab5aec25f89e78a78b879b7f430e3d04",
".git/objects/31/347610075f39c084edc0e1c117f74a037cd3d9": "5bcfb298064affc13961521230f8073d",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/30/27a3cab6b08a607b5a0c016d127b1a8854d4f0": "e06ad17ed249cbb3c222bc59fbb20049",
".git/objects/30/4bedd334a4cb790b0970b236b9dd6698844b5f": "81d8dc9aa31314ad7dc1034ee86597e3",
".git/objects/5b/04877d72af1f46a53b3ad0ae22a13f19ef598f": "f091d99d0ff738c212be6dd1035eb700",
".git/objects/37/d44aa18686bcf8110e5ebd4886d6019b5b67b1": "f75d406f4365592eb1cbc330da019044",
".git/objects/99/a0a25d1949037f8866b1cc7fca8a55cdc18eb4": "52fb9dc66ac3d43416d3af1553ddf9c3",
".git/objects/0f/f55f49d245f71dce86a425af3f42d08713df0c": "bf7b026cb238d22219c8f24415640709",
".git/objects/0f/24dcff08dfcf2b0de39946cd5ced1f00357f7f": "6c9a66a7f95810a1760609222665535f",
".git/objects/0f/05f35be8e204f36639ac10951e165a24a8ab27": "93f4ad95e50443dd3e659be0a75f0fbd",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/dd/a2cd600f72800c95dc641dc133d445e65ba454": "710033690ecd013f962858570c8ff28f",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d2/95fd52d0343565abdbc84abec859772aeafc56": "a046665bf06f113d7ccc40ac085ccfa5",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/c4/7e492fcf86978e27ed906a8c25a4eb843c9640": "6b6382b38d824d30519460324cea898e",
".git/objects/e6/46d591f99adb142edab348e5d728ad2bddc4a3": "7630b34441d494db3bf4d884cd250e72",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/c2/d8d2f44dd987786bbc249d4ad7bac3360f4811": "1926a57b256d9def261ccf6dc2914f65",
".git/objects/e9/2f263ab86054a8eacc62dae11f00890dc47548": "ccf4932696dce466d7ea43b198116f42",
".git/objects/e0/49c81f7cb35ebc411a3e1b547bf4ccf91292e8": "efad70dc0ca77a90ee53b5cc3be528ca",
".git/objects/46/c9f76803700d3dd96f36956b53fc6c1a92b5d5": "1d842993722f18eaea4abda45f8e1c84",
".git/objects/85/6237874fe3f6f47edabefd207befc1a3f358e2": "e110d1a6b811a813e14ef41add87b9a3",
".git/objects/76/ea68453d3a1adb743fdc2e8bfc0eb7d29b54bf": "fa033f33f8131cebf1cd30a31a86326b",
".git/objects/49/da9559af18b496772875161b1c4c2b1c102e5e": "641880ceafa160a33764e7b1bae5f070",
".git/objects/7a/8191c641bdaad45f98e2702648d16e22ff032a": "1a16909832dc973126046628e1b6fa88",
".git/objects/25/17c06f07844ded2f7a630a5a369c8bca448af8": "bc048c585d89433215fee70e00069aa0",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "bb3c21072f0e296b9d2de2277f7cb977",
".git/logs/refs/heads/main": "bb3c21072f0e296b9d2de2277f7cb977",
".git/logs/refs/remotes/origin/main": "4587632b076cce8605078a9ca8900742",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "1d7979761808907472e6649e11989ec5",
".git/refs/remotes/origin/main": "1d7979761808907472e6649e11989ec5",
".git/index": "e08686d6be7e26d6f3eed9553c1648be",
".git/COMMIT_EDITMSG": "65560e14df56f0d84200fd55cae9a299",
".git/FETCH_HEAD": "cba857a65febfdf9e2470cb4f123dae3",
"assets/AssetManifest.json": "532c1425a754ebfc78a59dcf81dccbd2",
"assets/NOTICES": "5808a42d51ae6ce00856705a76e75647",
"assets/FontManifest.json": "47bdc1cec1712017b4adcfaedbd82c00",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "95d596d0e239d453646bb8accb7bfac3",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/fonts/LeagueSpartan-Bold.ttf": "9a223d8a028354713a4a4072dc19250a",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
