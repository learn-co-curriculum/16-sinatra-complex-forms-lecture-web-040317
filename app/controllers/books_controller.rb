class BooksController < ApplicationController

  get '/books' do
    @books = Book.all
    erb :"books/index.html"
  end

  get '/books/new' do
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
      erb :'books/edit.html'
    end
  end
end
