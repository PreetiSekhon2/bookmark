require "sinatra/base"
require "./lib/bookmark.rb"

class BookmarkController < Sinatra::Base
  enable :sessions

  before do
    # @game = Game.instance
  end

  get "/" do
    "hello world"
    # erb :login
  end

  post '/' do
    @name = params[:name]
    @password = params[:password]
    redirect "/bookmarks"
  end

  get "/bookmarks" do
    erb :bookmarks
  end

  post '/bookmarks' do
    case params[:submit]
    when "add" then redirect "/add"
    when "update" then redirect "/update"
    when "delete" then redirect "/delete"
    end
  end

  get "/add" do
    erb :add_bookmarks
  end

  post "/add" do
    redirect "/bookmarks"
  end

  get "/update" do
    erb :update_bookmarks
  end

  post "/update" do
    redirect "/bookmarks"
  end

  get "/delete" do
    erb :delete_bookmarks
  end

  post "/delete" do
    redirect "/bookmarks"
  end

  run! if app_file==$0
end
