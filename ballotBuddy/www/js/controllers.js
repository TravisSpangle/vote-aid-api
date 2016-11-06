angular.module('SimpleRESTIonic.controllers', [])

    .controller('LoginCtrl', function (Backand, $state, $rootScope, LoginService) {
        var login = this;

        function signin() {
            LoginService.signin(login.email, login.password)
                .then(function () {
                    onLogin();
                }, function (error) {
                    console.log(error)
                })
        }

        function anonymousLogin() {
            LoginService.anonymousLogin();
            onLogin('Guest');
        }

        function onLogin(username) {
            $rootScope.$broadcast('authorized');
            $state.go('tab.dashboard');
            login.username = username || Backand.getUsername();
    }

        function signout() {
            LoginService.signout()
                .then(function () {
                    //$state.go('tab.login');
                    $rootScope.$broadcast('logout');
                    $state.go($state.current, {}, {reload: true});
                })

        }

        function socialSignIn(provider) {
            LoginService.socialSignIn(provider)
                .then(onValidLogin, onErrorInLogin);

        }

        function socialSignUp(provider) {
            LoginService.socialSignUp(provider)
                .then(onValidLogin, onErrorInLogin);

        }

        onValidLogin = function(response){
            onLogin();
            login.username = response.data || login.username;
        }

        onErrorInLogin = function(rejection){
            login.error = rejection.data;
            $rootScope.$broadcast('logout');

        }


        login.username = '';
        login.error = '';
        login.signin = signin;
        login.signout = signout;
        login.anonymousLogin = anonymousLogin;
        login.socialSignup = socialSignUp;
        login.socialSignin = socialSignIn;

    })

    .controller('SignUpCtrl', function (Backand, $state, $rootScope, LoginService) {
        var vm = this;

        vm.signup = signUp;

        function signUp(){
            vm.errorMessage = '';

            LoginService.signup(vm.firstName, vm.lastName, vm.email, vm.password, vm.again)
                .then(function (response) {
                    // success
                    onLogin();
                }, function (reason) {
                    if(reason.data.error_description !== undefined){
                        vm.errorMessage = reason.data.error_description;
                    }
                    else{
                        vm.errorMessage = reason.data;
                    }
                });
        }


        function onLogin() {
            $rootScope.$broadcast('authorized');
            $state.go('tab.dashboard');
        }


        vm.email = '';
        vm.password ='';
        vm.again = '';
        vm.firstName = '';
        vm.lastName = '';
        vm.errorMessage = '';
    })

    .controller('DashboardCtrl', function (ItemsModel, $rootScope) {
        var vm = this;

        function goToBackand() {
            window.location = 'http://docs.backand.com';
        }

        function getAll() {
            ItemsModel.all()
                .then(function (result) {
                    vm.data = result.data.data;
                });
        }

        function clearData() {
            vm.data = null;
        }

        function create(object) {
            ItemsModel.create(object)
                .then(function (result) {
                    cancelCreate();
                    getAll();
                });
        }

        function update(object) {
            ItemsModel.update(object.id, object)
                .then(function (result) {
                    cancelEditing();
                    getAll();
                });
        }

        function deleteObject(id) {
            ItemsModel.delete(id)
                .then(function (result) {
                    cancelEditing();
                    getAll();
                });
        }

        function initCreateForm() {
            vm.newObject = {name: '', description: ''};
        }

        function setEdited(object) {
            vm.edited = angular.copy(object);
            vm.isEditing = true;
        }

        function isCurrent(id) {
            return vm.edited !== null && vm.edited.id === id;
        }

        function cancelEditing() {
            vm.edited = null;
            vm.isEditing = false;
        }

        function cancelCreate() {
            initCreateForm();
            vm.isCreating = false;
        }

        vm.objects = [];
        vm.edited = null;
        vm.isEditing = false;
        vm.isCreating = false;
        vm.getAll = getAll;
        vm.create = create;
        vm.update = update;
        vm.delete = deleteObject;
        vm.setEdited = setEdited;
        vm.isCurrent = isCurrent;
        vm.cancelEditing = cancelEditing;
        vm.cancelCreate = cancelCreate;
        vm.goToBackand = goToBackand;
        vm.isAuthorized = false;

        $rootScope.$on('authorized', function () {
            vm.isAuthorized = true;
            getAll();
        });

        $rootScope.$on('logout', function () {
            clearData();
        });

        if (!vm.isAuthorized) {
            $rootScope.$broadcast('logout');
        }

        initCreateForm();
        getAll();

    });

