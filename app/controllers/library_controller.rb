class LibraryController < ApplicationController
    def home
    end

    def search
        @books = Book.where(isbn: params[:ISBN])
                    .or(Book.where(title: params[:bookName]))
                    .or(Book.where(author: params[:authorName]))
                    .or(Book.where(genre: params[:genre]))
        
    end

end
