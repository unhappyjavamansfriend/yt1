# Minification / Obfuscator 

npm install -g html-minifier
html-minifier --collapse-whitespace --remove-comments --minify-css true --minify-js true -o output.html index.html
npm install -g uglify-js
uglifyjs script.js -o script.min.js -c -m
npm install -g javascript-obfuscator
javascript-obfuscator input.js --output output.js --compact true --control-flow-flattening true

## HTML + CSS

Soredemo nikki wa kakitai md5=518a909927f279c78581ba5b3ea63c46
cd ./nginx/html

html-minifier --collapse-whitespace --remove-comments --minify-css true --minify-js true -o output.html index.html
html-minifier --collapse-whitespace --remove-comments --minify-css true --minify-js true -o index.html index.b.html

html-minifier --collapse-whitespace --remove-comments --minify-css true --minify-js true -o log.html log.b.html
html-minifier --collapse-whitespace --remove-comments --minify-css true --minify-js true -o 518a909927f279c78581ba5b3ea63c46.html log.b.html 

## JS

Soredemo js o kakitai md5=6974850989e8a6a37d36f56eee8fe955
cd ./nginx/html/static/script
javascript-obfuscator input.js --output output.js --compact true --control-flow-flattening true
javascript-obfuscator script.js --output script.min.js --compact true --control-flow-flattening true
javascript-obfuscator script.js --output 6974850989e8a6a37d36f56eee8fe955.min.js --compact true --control-flow-flattening true

## S3 + CloudFront

0. Obfuscator js
javascript-obfuscator script.js --output 6974850989e8a6a37d36f56eee8fe955.min.js --compact true --control-flow-flattening true
1. ./static/scripts/6974850989e8a6a37d36f56eee8fe955.min.js mv to . 
1. change index.b.html <script> to https://xxx.cloudfront.net/folder/6974850989e8a6a37d36f56eee8fe955.min.js
2. ./static/styles/styles.css add index.b.html
2. Minification index.b.html & styles.css
html-minifier --collapse-whitespace --remove-comments --minify-css true --minify-js true -o output.html index.html
3. log.html Minification and rename to Soredemo nikki wa kakitai md5=518a909927f279c78581ba5b3ea63c46