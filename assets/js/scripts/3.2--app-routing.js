// JAVASCRIPT LAYER [3.2. APP: ROUTING]  ==============================================================================

// ====== INDEX  ======================================================================================================
// ==
// == A. ROUTES
// ==
// == B. DEFAULT ROUTE
// ==
// ====== INDEX  ======================================================================================================

app.config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {

// B. DEFAULT ROUTE +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        $urlRouterProvider.otherwise('/home'); 

// B. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// A. ROUTES ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        $stateProvider

                // A.1. ANONYMOUS ROUTING -----------------------------------------------------------------------------

                .state('home', {
                    templateUrl: 'index.html'
                })
        
        // A.3.8. END

        // A.3. END ---------------------------------------------------------------------------------------------------

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    }]);

// END OF FILE ========================================================================================================