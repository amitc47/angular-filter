<html>
<link rel="stylesheet" href="style/style.css"/>
<body>
<div ng-app="app" ng-controller="myController">
<script type="text/javascript" src="script/angular.js"></script>
<script type="text/javascript" src="script/script.js"></script>
<!-- <input type="text" placeholder="Search by Name" ng-model="search.name"><br/><br>
<input type="text" placeholder="Search by City" ng-model="search.city"><br/><br> -->
<!-- <input type="text" placeholder="Search by name and city" ng-model="searchText"><br/><br> -->

<input type="text" placeholder="Search by Name" ng-model="search1.name"><br/><br>
<input type="text" placeholder="Search by City" ng-model="search1.city"><br/><br>
<input type="checkbox" ng-model="exactMatch"> Exact Match
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Date of Birth</th>
				<th>Gender</th>
				<th>Salary</th>
				<th>City</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="employee in employees | filter:search1:exactMatch">
				<td>{{employee.name | uppercase}}</td>
				<td>{{employee.dob | date : "dd-mm-yyyy"}}</td>
				<td>{{employee.gender | lowercase}}</td>
				<td>{{employee.salary | currency:"£":1}}</td>
				<td>{{employee.city | uppercase}}</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>
