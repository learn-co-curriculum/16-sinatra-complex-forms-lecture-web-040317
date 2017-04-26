class AuthorsController < ApplicationController

  get '/authors' do
    @authors = Author.all
    erb :'authors/index.html'
  end

  get '/authors/new' do
    erb :'authors/new.html'
  end

  post '/authors' do
   author = Author.new(params[:author])
   if author.save
     redirect to('/authors')
   else
     erb :'authors/new.html'
   end
  end

end
