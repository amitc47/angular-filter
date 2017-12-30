var app = angular.module('app', []);

var myCtrl = function($scope){
	var employees = [
		{name: 'Amit', dob: new Date("02-01-1965"), gender: 'Male', salary:538743.983, city:'Patna' },
		{name: 'Sandeep', dob: new Date("06-12-1944"), gender: 'Male', salary:34333.98, city:'Delhi' },
		{name: 'Vasim', dob: new Date("09-02-1990"), gender: 'Male', salary:64454 , city:'Patna'},
		{name: 'Manoj', dob: new Date("10-08-2000"), gender: 'Male', salary:65454.09 , city:'Delhi'},
		{name: 'Meha', dob: new Date("06-10-1993"), gender: 'Female', salary:89348.4588 , city:'London'},
		{name: 'Rahul', dob: new Date("09-03-1923"), gender: 'Male', salary:944544.983 , city:'London'},	
	]
	$scope.employees = employees;
	
	$scope.search = function(item){
		
		if($scope.searchText == undefined){
			return true;
		}
		if(item.name.toLowerCase().indexOf($scope.searchText.toLowerCase()) != -1 || 
				item.city.toLowerCase().indexOf($scope.searchText.toLowerCase()) != -1 ){
			return true;
		}
		return false;
	}
	
}

app.controller('myController', myCtrl);