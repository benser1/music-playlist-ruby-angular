angular
  .module('app', ['ui.router', 'templates', 'ngAnimate'])
  .config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {
      $stateProvider
        .state('home', {
          url: '/home',
          templateUrl: 'home/_home.html'
          // controller: 'HomeCtrl'
        })
        .state('something', {
          url: '/something',
          templateUrl: 'something/_something.html',
          controller: 'app/controllers/searches_controller.rb'
        });
      $urlRouterProvider.otherwise('/home');
    }]);