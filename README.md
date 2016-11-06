# Vote Aid API

This project is being developed during the smart city kirkland hackathon.

## Interacting with the API

When teseting keep in mind that some browsers will not allow any cross domain requests to happen. This was tested in FireFox.

### Confirming a Connection

    <script type='text/javascript' src='http://code.jquery.com/jquery-latest.js'></script>
    <script type='text/javascript'>
      var _url = "http://api.ballot-buddy.com/helloworld";
      $.get( _url, function( data ) {
          alert( data.message );
      });
    </script>

### Logging In

To interact with the api you will need to acquire a token.

    var _url = "http://api.ballot-buddy.com/users/create"
    params = { user: { first: "John", last: "Test", email: "test@test.com", state: "wa" } };
    $.post( _url, params)
    .done(function( data ) {
      console.log( "Token Loaded: " , data.token );
    }).error(function( data ) {
      console.log( "error: " , error );
    });

### Retrieving Questions

To get the current list of questions.

    _url = "http://api.ballot-buddy.com/questions";
    $.get(_url, function(questions){ console.log(questions);});

### Submitting Answer

Submit answers with the users token, question_id, and answer

    var _url = "http://api.ballot-buddy.com/answer"
    params = { question_id: 3, answer: 'yes', };

    $.ajax({
      url: _url,
      type: 'POST',
      data: params,
      headers: {"Auth-Token": _token }
      }).done(function(done) { 
        console.log(done);
    });

### Retrieving candidates 

    var _url = "http://api.ballot-buddy.com/candidates"

    $.ajax({
    url: _url+"/candidates",
    headers: {"Auth-Token": _token }
    }).done(function(data) {
      console.log("candidates: ", data.candidates);
    }).fail(function(data){ 
      console.log('error');
    });

# TODO:

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
