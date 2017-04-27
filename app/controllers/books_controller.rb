class BooksController < ApplicationController

  get '/books' do
    @books = Book.all
    erb :"books/index.html"
  end

  get '/books/new' do
    @authors = Author.order(:first_name)
    @genres = Genre.order(:name)
    erb :"books/new.html"
  end

  post '/books' do
    # {book: {
    #   title: "String",
    #   author_id: "24",
    #   snippet: 'String',
    #   author_name: "String",
    #   genre_ids: ["1", "2"]
    #   }}
    book = Book.create(params[:book])
    redirect to('/books')
  end

  get '/books/:id' do
    @book = Book.find(params["id"])
    erb(:"books/show.html")
  end

  get '/books/:id/edit' do
    @book = Book.find(params["id"])
    erb :'books/edit.html'
  end

  patch '/books/:id' do
    book = Book.find(params["id"])
    if book.update(params[:book])
      redirect to("/books/#{book.id}")
    else
      redirect to("/books/#{book.id}/edit")
    end
  end
end
