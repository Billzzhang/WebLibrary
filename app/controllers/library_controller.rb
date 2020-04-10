class LibraryController < ApplicationController
    def home
    end

    def search
        isbn = Book.none
        author = Book.none
        bookName = Book.none
        genre = Book.none
        if params[:ISBN] != ''
            isbn = Book.where('isbn LIKE ?', '%'+params[:ISBN]+'%')
        end
        if params[:bookName] != ''
            bookName = Book.where('title LIKE ?', '%'+params[:bookName]+'%')
        end
        if params[:authorName] != ''
            author = Book.where('author LIKE ?', '%'+params[:authorName]+'%')
        end
        if params[:genre] != ''
            genre = Book.where('genre LIKE ?', '%'+params[:genre]+'%')
        end
        @books = isbn.or(bookName).or(author).or(genre)
    end

    def index
        @books = Book.all
    end

    def add

    end
    
    def insertBook
        @needsISBN = false
        @existingISBN = false
        @name = params[:bookName]
        if params[:ISBN] == ""
            render :status => :bad_request
            @needsISBN = true
        elsif Book.where(isbn: params[:ISBN]).any?
            @existingISBN = true
        else
            newBook = Book.create([{isbn: params[:ISBN], title: params[:bookName], author: params[:authorName], genre: params[:genre]}])
        end
    end
end
