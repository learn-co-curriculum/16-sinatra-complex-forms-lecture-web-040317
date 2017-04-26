class AuthorsController < ApplicationController

  get '/authors' do
    @authors = Author.all
    erb :'authors/index.html'
  end

  get '/authors/new' do
    erb :'authors/new.html'
  end

  post '/authors' do
   "POST TO AUTHORS"
  end

end
