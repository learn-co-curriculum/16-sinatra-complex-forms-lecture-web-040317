## Sinatra

As a site visitor, when I create a book I can associate it with an existing author.

  1. Does anything on my schema need to change?  NO
  2. What is the URL that the user should interact with?
    get '/books/new' => new form/action
    post '/books' => create

As a site visitor, when I create a book I can associate it with multiple different genres
  1. Does my schema need to change? √
  2. Whta URL will the user interact with?


As a site visitor, I can edit the genres that are associated with a book

  + Add checkboxes to the edit form
  + They should be pre-checked if the book has that genre
  + If I uncheck one, it should remove that genre
  + If I uncheck all of them, it should remove all the genres
