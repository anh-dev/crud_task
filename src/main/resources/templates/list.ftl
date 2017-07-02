<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">User </span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.user.id"/>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Name</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.name" id="uname"
                                       class="username form-control input-sm" placeholder="Enter name" required
                                       ng-minlength="3"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="age">Age</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.age" id="age" class="form-control input-sm"
                                       placeholder="Enter age" required ng-pattern="ctrl.onlyIntegers"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="admin">Admin</label>
                            <div class="col-md-7">
                                <input type="checkbox" ng-model="ctrl.user.admin" id="admin"
                                />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit" value="{{!ctrl.user.id ? 'Add' : 'Update'}}"
                                   class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                            <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm"
                                    ng-disabled="myForm.$pristine">Reset Form
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <form class="form-inline">
        <div class="form-group">
            <label>Search</label>
            <input type="text" ng-model="search" class="form-control" placeholder="Search">
        </div>
    </form>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="leach" List of Users </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th ng-click="sort('id')">ID
                            <span class="glyphicon sort-icon" ng-show="sortKey=='id'"
                                  ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                        </th>
                        <th ng-click="sort('name')">NAME
                            <span class="glyphicon sort-icon" ng-show="sortKey=='name'"
                                  ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                        </th>
                        <th ng-click="sort('age')">AGE
                            <span class="glyphicon sort-icon" ng-show="sortKey=='age'"
                                  ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                        </th>
                        <th ng-click="sort('createdDate')">CREATED TIME
                            <span class="glyphicon sort-icon" ng-show="sortKey=='createdDate'"
                                  ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                        </th>
                        <th ng-click="sort('admin')">ADMIN
                            <span class="glyphicon sort-icon" ng-show="sortKey=='admin'"
                                  ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                        </th>
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr dir-paginate="u in ctrl.getAllUsers()|orderBy:sortKey:reverse|filter:search|itemsPerPage:5">
                        <td>{{u.id}}</td>
                        <td>{{u.name}}</td>
                        <td>{{u.age}}</td>
                        <td>{{u.createdDate}}</td>
                        <td><input type="checkbox" ng-checked="{{u.admin}}" disabled></input></td>
                        <td>
                            <button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">
                                Edit
                            </button>
                        </td>
                        <td>
                            <button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">
                                Remove
                            </button>
                        </td>
                    </tr>
                    </tbody>

                </table>

                <dir-pagination-controls
                        max-size="5"
                        direction-links="true"
                        boundary-links="true">
                </dir-pagination-controls>
            </div>
        </div>
    </div>

</div>