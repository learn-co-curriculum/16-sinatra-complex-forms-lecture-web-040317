class BooksController < ApplicationController

  get '/books' do
    @books = Book.all
    erb :"books/index.html"
  end

  get '/books/new' do
    @authors = Author.order(:first_name)
    erb :"books/new.html"
  end

  post '/books' do
    Book.create(params[:book])
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
