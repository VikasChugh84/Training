class BooksController < ApplicationController
  
  def all_books_count
    #render ('books/related_subject')
    # This can render to the related_subject template instead of all_books_count
    @count = 35
  end

  def related_subject
    render ('demo/show')
    # This can render to show template of demo folder instead of related_subject
    # Point here is demo is considered just as folder instead of controller.
  end

  def show
  end

  def index
  end

  def check_book
    redirect_to :controller => 'demo', :action => 'show'
    # This can redirect request to show action of demo controller. 
    
  end

  def check_subject
    redirect_to controller: 'books', action: 'related_subject'
    # This can redirect to check action of books controller
    # Redirect could be written in above format as well.
  end

end
