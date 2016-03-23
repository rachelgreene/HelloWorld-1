<!doctype html>
<html ng-app="myApp">
  <head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.7/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular-route.min.js"></script>
  </head>
  <body>
    <script type="text/ng-template" id="home.html">
      <h1>Home</h1>
      <h3>{{message}}</h3>
    </script>
    <script type="text/ng-template" id="blog.html">
      <h1>Blog</h1>
      <h3>{{message}}</h3>
    </script>
    <script type="text/ng-template" id="about.html">
      <h1>About</h1>
      <h3>{{message}}</h3>
    </script>

    <a href="#/">Home</a>
    <a href="#/blog">Blog</a>
    <a href="#/about">About</a>

    <div ng-view></div>
    <div ng-controller = "Hello">
      <p>EMail Id : {{user.emailId}}</p> 
        <p>User Name : {{user.userName}}</p> 
    </div>

    <script>
    var app = angular.module('myApp', ['ngRoute']);

app.config(function($routeProvider) {
  $routeProvider

  .when('/', {
    templateUrl : 'home.html',
    controller  : 'HomeController'
  })

  .when('/blog', {
    templateUrl : 'blog.html',
    controller  : 'BlogController'
  })

  .when('/about', {
    templateUrl : 'about.html',
    controller  : 'AboutController'
  })

  .otherwise({redirectTo: '/'});
});

app.controller('HomeController', function($scope) {
  $scope.message = 'Hello from HomeController';
});

app.controller('BlogController', function($scope) {
  $scope.message = 'Hello from BlogController';
});

app.controller('AboutController', function($scope) {
  $scope.message = 'Hello from AboutController';
});

app.controller('Hello', function($scope, $http){
//function Hello($scope, $http) {
 $http.get('http://localhost:8080/HelloWorld/hello').
success(function(data) {
 $scope.user = data;
 });        });


     
    </script>
  </body>
</html>
