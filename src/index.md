
# MQTT and Node.js

<p style="text-align: center; font-size: 20px;">
Messagging in the Internet of Things
</p>

<p style="text-align: center; font-size: 15px; padding-top: 30px;">
Twitter: @matteocollina
</p>
<p style="text-align: center; font-size: 15px;">
GitHub: @mcollina
</p>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 style="position: absolute; top: 50px">We #code</h2>
<img src="img/laptop.jpg" style="width: 510px; margin-left: -0px;
margin-top: -20px;
box-shadow:inset 0 1px 2px
rgba(0,0,0,0.075),0 0 5px rgba(255,255,255,0.5)">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## How do we #code an app?

<img src="img/touch.svg" style="margin-top: 50px; margin-left: 50px;
height: 150px;">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## We call a Web Server!

<img src="img/web server.svg" style="margin-top: 10px; margin-left: 50px;
height: 230px;">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 style="position: absolute; top: 30px; color: white">
How do we #code a Thing?
</h2>

<img src="img/rasp.jpg" style="width: 520px;
height: 370px;
margin-top: 5px;
margin-left: -30px; box-shadow:inset 0 1px 2px
rgba(0,0,0,0.075),0 0 5px rgba(255,255,255,0.5)">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 data-bespoke-bullet>How do we #code a Thing?</h2>

Problems:
<ul>
  <li data-bespoke-bullet>Power Consumption/Battery</li>
  <li data-bespoke-bullet>Sits behind a firewall</li>
  <li data-bespoke-bullet>Reacts to real-world events fast</li>
  <li data-bespoke-bullet>Scalable solution?</li>
</ul>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<img src="img/mqttorg.svg" style="margin-top: 100px; margin-left: 40px;
width: 350px;">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## MQTT

<img src="img/pubsub.png" style="height: 400px; margin-top: -100px;
margin-left: -50px;">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 data-bespoke-bullet>MQTT</h3>

### Facts
<ul>
  <li data-bespoke-bullet>Binary Protocol</li>
  <li data-bespoke-bullet>Publish/Subscribe</li>
  <li data-bespoke-bullet>3 levels of QoS</li>
  <li data-bespoke-bullet>Standard OASIS</li>
  <li data-bespoke-bullet>Offline/Disconnected Mode</li>
</ul>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Let's move to the #code!

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## MQTT.js

### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; http://npm.im/mqtt
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; 20k packets/second parser
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; Stream based
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; High-Level Client API
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; Low-Level Server
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; Built by @adamvr and @mcollina

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
## Instant Gratification

```js
var mqtt = require("mqtt");

var client = mqtt.createClient();

client.subscribe("nodeconf/eu");

client.on("message", function(topic, payload) {
  alert([topic, payload].join(": "));
  client.end();
});

client.publish("nodeconf/eu", "hello vikings!");
```

<a href="#" onclick="runCurrentScript(); return false;">Run!</a>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## How the hell can it work on a Browser?

* MQTT.js can be tunnelled inside WebSocket/Engine.io/any binary stream
* The previous example runned inside the browser using WebSocket
* Thanks @substack for Browserify
* Not yet released (sorry :/), but coming later this month (see:
  [adamvr/MQTT.js#130](https://github.com/adamvr/MQTT.js/pull/130)
  and
  [mcollina/mqtt.js-over-websockets](https://github.com/mcollina/mqtt.js-over-websockets))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Mosca: MQTT broker in Node.js

<ul>
  <li data-bespoke-bullet> http://npm.im/mosca</li>
  <li data-bespoke-bullet> Standalone usage, through `$ mosca`</li>
  <li data-bespoke-bullet> Embeddable in your app</li>
  <li data-bespoke-bullet> Authentication APIs</li>
  <li data-bespoke-bullet> Supports AMQP, Mongo, and MQTT as pub/sub backends (if you need them)</li>
  <li data-bespoke-bullet> Needs a DB, such as LevelUp, Mongo, or Redis</li>
  <li data-bespoke-bullet> Support websockets (not yet published, [mcollina/mosca#44](https://github.com/mcollina/mosca/pull/44))</li>
  <li data-bespoke-bullet> Fast, 10k+ messages routed per second</li>
</ul>
 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Mosca: Benchmark

<img src="img/moscabench.svg" style="margin-top: 20px; margin-left:
100px; width:250px;">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Offline Mode

First, subscribe and disconnect.

```js
var mqtt = require("mqtt");

var client = mqtt.createClient({
  clientId: "nodeconfslides",
  clean: false
}).subscribe("nodeconf/eu/offline", { qos: 1 }, function() {
  alert("subscribe done!");
  // called when the subscribe is successful
  client.end();
});
```

<a href="#" onclick="runCurrentScript(true); return false;">Run!</a>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Offline Mode

Then, someone else publish an important message:

```js
var mqtt = require("mqtt");

var client = mqtt.createClient();

client.publish("nodeconf/eu/offline", 
               "hello vikings!", 
               { qos: 1 }, function() {
  alert("publish done!");
  client.end();
});
```

<a href="#" onclick="runCurrentScript(); return false;">Run!</a>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Offline Mode

When our first client reconnect, it receives all the missed messages, in
order.

```js
var mqtt = require("mqtt");

var client = mqtt.createClient({
  clientId: "nodeconfslides",
  clean: false
});

client.on("message", function(topic, payload) {
  alert([topic, payload.toString()].join(": "));

  setTimeout(client.end.bind(client), 1000);
});
```

<a href="#" onclick="runCurrentScript(true); return false;">Run!</a>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Does Offline Mode Scale?

<img src="img/moscavsmosquitto.svg" style="margin-top: 20px; margin-left:
100px; width:250px;">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Ponte: the IoT bridge for Web Developers

* Support multiple protocols: HTTP, MQTT, CoAP.
* Based on Mosca, Express, and Node.js
* Will support data transformation, too!
* http://github.com/mcollina/ponte
* Soon part of Eclipse Foundation
* http://eclipse.org/proposals/technology.ponte/

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 style="position: absolute; top: 30px; color: white">
Demo
</h2>

<img src="img/missile.jpg" style="width: 520px;
margin-top: 5px;
margin-left: -30px; box-shadow:inset 0 1px 2px
rgba(0,0,0,0.075),0 0 5px rgba(255,255,255,0.5)">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Thanks!

<p style="text-align: center; font-size: 20px;">
Twitter: @matteocollina
</p>
<p style="text-align: center; font-size: 20px;">
GitHub: @mcollina
</p>

