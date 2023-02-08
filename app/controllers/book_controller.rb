class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def createBook
        b = Book.create(title: params[:title], author_id: params[:author_id], publication_date: params[:dop])
        render json: b
    end

    def readAllBooks 
        b = Book.all
        render json: b
    end

    def readBookById
        b = Book.find(params[:id])
        render json: b
    end

    # def readAuthorByBook
    #     a = Author.where(id: params[:id])
    #     render json: a
    # end

    def readBookByTitle
        b = Book.where(title: params[:title])
        render json: b
    end

    def updateBook
        b = Book.find(params[:id])
        b.title = params[:name] || b.title
        b.publication_date = params[:dop] || b.publication_date
        b.save
        render json: b
    end

    def deleteBook
        b = Book.where(id: params[:id]).destroy_all
        render json: b
    end
end
