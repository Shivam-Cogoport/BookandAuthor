Rails.application.routes.draw do
  # root "application#index"
  post "/author/post", to: "author#createAuthor"
  post "/book/post", to: "book#createBook"

  get "/author", to: "author#readAllAuthors"
  get "/author/id/:id", to: "author#readAuthorById"
  get "/author/name/:name", to: "author#readAuthorByName"
  get "/book", to: "book#readAllBooks"
  get "/book/id/:id", to: "book#readBookById"
  get "/book/title/:title", to: "book#readBookByTitle"

  get "/author/book/:id", to: "author#readAuthorBooks"
  # get "/book/author/:id", to: "book#readAuthorByBook"

  put "/author/update/:id", to: "author#updateAuthor"
  put "/book/update/:id", to: "book#updateBook"

  delete "/author/delete/:id", to: "author#deleteAuthor"
  delete "/book/delete/:id", to: "book#deleteBook"
end
