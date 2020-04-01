class LibraryController < ApplicationController
    def home
        @book = book.all
    end

    def search
        render json: params
        
    end

end
