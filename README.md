# Vote Aid API

This project is being developed during the smart city kirkland hackathon.

## Interacting with the API

### Confirming a Connection

    <script type='text/javascript' src='http://code.jquery.com/jquery-latest.js'></script>
    <script type='text/javascript'>
      var _url = "http://ec2-35-162-149-150.us-west-2.compute.amazonaws.com/helloworld";
      $.get( _url, function( data ) {
          alert( data.message );
      });
    </script>

### Logging In

To interact with the api you will need to acquire a token.

    var _url = "http://ec2-35-162-149-150.us-west-2.compute.amazonaws.com/users/create"
    params = { user: { first: "John", last: "Test", email: "test@test.com", state: "wa" } };
    $.post( _url, params)
    .done(function( data ) {
      console.log( "Token Loaded: " , data.token );
    }).error(function( data ) {
      console.log( "error: " , error );
    });

### Retrieving Questions

To get the current list of questions.

    _url = "http://ec2-35-162-149-150.us-west-2.compute.amazonaws.com/questions";
    $.get(_url, function(questions){ console.log(questions);});

### Submitting Answer

Submit answers with the users token, question_id, and answer

    var _url = "http://ec2-35-162-149-150.us-west-2.compute.amazonaws.com/answer"
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

    var _url = "http://ec2-35-162-149-150.us-west-2.compute.amazonaws.com/candidates"

    $.ajax({
      url: _url,
      type: 'GET',
      headers: {"Auth-Token": _token }
      }).done(function(done) { 
        console.log(done);
    });

# TODO:

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
