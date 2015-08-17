# fme-compile-html
A simple html5/angularjs directive for sorting lists via drag and drop

Tested with karma/chai/sinon
#Install
```
bower install fme-compile-html
```
Inject the module into your angular app
```js
angular.module('your-app',['fme-compile-html'])
```
#Developer Info
- git hooks do not git pushed to github
- So, run 
``` cp git-hooks/. .git/hooks/. ```
  - you may need to run chmod +x against each of these files
- Don't forget to run ```npm install and bower install```
- when you are happy with everything submit a new tag ```git tag -a v1.0.2 -m 'Added new callback for onDragStart'``` ```git --tags push origin --tags```
  - This is necessary to get your changes when the users run bower install or bower update 
#Usage
Add the directive to a div passing an ng-model from the parent controller with the html you want to display
```html
<div fme-compile-html='true' htmltext="description">
    </div>
```

##Run the tests locally
  - Install HomeBrew
    ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```
  - Install npm
    ```brew install node```
  - Install Karma
    ```npm install karma```
  - Run Karma tests
    ```karma start karma.conf.js```
