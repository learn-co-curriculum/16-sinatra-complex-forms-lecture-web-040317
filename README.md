## Sinatra

As a site visitor, when I create a book I can associate it with an existing author.

  1. Does anything on my schema need to change?  NO
  2. What is the URL that the user should interact with?
    get '/books/new' => new form/action
    post '/books' => create
