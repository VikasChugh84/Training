class BooksController < ApplicationController
  
  def all_books_count
    render ('books/related_subject')
    # This can render to the related_subject template instead of all_books_count
  end

  def related_subject
    render ('demo/show')
    # This can render to show template of demo folder instead of related_subject
    # Point here is demo is considered just as folder instead of controller.
  end

end
