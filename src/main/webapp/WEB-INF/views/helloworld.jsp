<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html ng-app> 

    <head> 
  <title>Spring MVC + AngularJS Demo</title> 
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script> 

        <script> 
   function Hello($scope, $http) { 
        $http.get('http://localhost:8080/HelloWorld/hello'). 
         success(function(data) { 
            $scope.user = data; 
          }); 
   } 
  </script> 
    </head> 

    <body> 

        <div ng-controller="Hello"> 
          <h2>Spring MVC + AngularJS Demo</h2> 
         <p>EMail Id : {{user.emailId}}</p> 
         <p>User Name : {{user.userName}}</p> 
 </div> 

    </body> 



22 
</html> 

