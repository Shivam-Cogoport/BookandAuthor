class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def createAuthor 
        a = Author.create(name: params[:name], country: params[:country], DOB: params[:dob])
        render json: a
    end

    def readAllAuthors 
        a = Author.all
        render json: a
    end

    def readAuthorById
        a = Author.find(params[:id])
        render json: a
    end 

    def readAuthorBooks
        books = Book.where(author_id: params[:id])
        render json: books
    end

    def readAuthorByName
        a = Author.where(name: params[:name])
        render json: a
    end

    def updateAuthor 
        a = Author.find(params[:id])
        a.name = params[:name] || a.name
        a.country = params[:country] || a.country
        a.DOB = params[:dob] || a.DOB
        a.save
        render json: a
    end

    def deleteAuthor 
        a = Author.where(id: params[:id]).destroy_all
        books = Book.where(author_id: params[:id]).destroy_all
        render json: a
    end
end


