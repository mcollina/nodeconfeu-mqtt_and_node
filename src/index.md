
# MQTT and Node.js

<p style="text-align: center; font-size: 20px;">
A messagging protocol for the Internet of Things
</p>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 style="position: absolute; top: 50px">We #code</h2>
<img src="img/laptop.jpg" style="height: 450px; margin-left: -30px;
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

<img src="img/rasp.jpg" style="height: 370px;
margin-top: 5px;
margin-left: -30px; box-shadow:inset 0 1px 2px
rgba(0,0,0,0.075),0 0 5px rgba(255,255,255,0.5)">

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 data-bespoke-bullet>How do we #code a Thing?</h2>

Problems:
<ul>
  <li data-bespoke-bullet>Power Consumpution/Battery</li>
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
  <li data-bespoke-bullet>Standard</li>
  <li data-bespoke-bullet>Offline/Disconnected Mode</li>
</ul>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 data-bespoke-bullet>MQTT vs WebSocket</h3>

It's better to use MQTT or WebSocket for live notification in our apps?
<ul>
  <li data-bespoke-bullet>93x faster throughput</li>
  <li data-bespoke-bullet>11.89x less battery to send</li>
  <li data-bespoke-bullet>170.9x less battery to receive</li>
  <li data-bespoke-bullet>1/2 as much power to keep connection open</li>
  <li data-bespoke-bullet>8x less network overhead</li>
</ul>

<p data-bespoke-bullet style="font-size: 10px; margin-top:10px;">
Measured on Android
(Source: http://mobilebit.wordpress.com/2013/05/03/rest-is-for-sleeping-mqtt-is-for-mobile/)
</p>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Heading 2

### Heading 3
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; more 3rd-level heading
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; and a little more
### &nbsp;&nbsp;&nbsp;&nbsp;&hellip; just one more!

And a bit of paragraph here

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Authored in Markdown

Single *index.md* file (like [this one](https://raw.github.com/rvagg/campjs-2013-learn-you-node/master/src/index.md)), with a *build.js* (like [this one](https://raw.github.com/rvagg/campjs-2013-learn-you-node/master/src/build.js)) script that converts to the slides, including formatting and even syntax highlighting.

 * *build.js* also has a `--watch`

```js
var foo = require('bar')

if (foo['woohoo'] === false)
  throw new Error('Whoa!')
```

And GitHub-style `inline = code`.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

## Break out of Markdown

Inline HTML supported so you can control styling:

<table cellpadding=0 cellspacing=0 style="border-collapse: collapse; margin: 20px auto;">
  <tr>
    <td style="border-bottom: dashed 2px rgb(134,136,118); padding: 2em; text-align: center;">Eh?</td>
    <td style="border: solid 2px rgb(134,136,118); background-color: rgb(245,245,244); padding: 2em; text-align: center;" colspan=4>Ooooo, a white box!</td>
    <td style="border-bottom: dashed 2px rgb(134,136,118); padding: 0.5em;">&nbsp;</td>
  </tr>
  <tr>
    <td style="padding: 2em; text-align: center;" rowspan=2>What is this?</td>
    <td style="border: solid 2px rgb(134,136,118); padding: 2em; text-align: center;" colspan=4>I don't know, but it's awesome!</td>
  </tr>
</table>

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<h2 data-bespoke-bullet>Animated bullet-points</h2>

<ul>
  <li data-bespoke-bullet>Bullet points</li>
  <li data-bespoke-bullet>... are animated</li>
  <li data-bespoke-bullet>... by adding the</li>
  <li data-bespoke-bullet>... `data-bespoke-bullet` attribute to html elements</li>
</ul>
