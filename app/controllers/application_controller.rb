class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
    set :dog, "dog"
  end

  get "/" do
  	erb :index
  end

  get "/dog" do
    class Dog

      attr_accessor :name, :breed, :age

      def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
      end
    end
  end


end
