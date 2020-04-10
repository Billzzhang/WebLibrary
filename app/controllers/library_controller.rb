class LibraryController < ApplicationController
    def home
    end

    def search
        @isbn = Book.none
        @author = Book.none
        @bookName = Book.none
        @genre = Book.none
        if params[:ISBN] != ''
            @isbn = Book.where('isbn LIKE ?', '%'+params[:ISBN]+'%')
        end
        if params[:bookName] != ''
            @bookName = Book.where('title LIKE ?', '%'+params[:bookName]+'%')
        end
        if params[:authorName] != ''
            @author = Book.where('author LIKE ?', '%'+params[:authorName]+'%')
        end
        if params[:genre] != ''
            @genre = Book.where('genre LIKE ?', '%'+params[:genre]+'%')
        end
        @books = @isbn.or(@bookName).or(@author).or(@genre)
    end

    def index
        @books = Book.all
    end

    def add

    end

end
