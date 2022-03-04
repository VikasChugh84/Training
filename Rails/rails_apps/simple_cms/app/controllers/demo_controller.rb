class DemoController < ApplicationController
   
  def index
  end

  def show
  end

  def about
    render ('demo/about_us')
  end

  def contact
    @country = params[:country]
    if @country == 'us' || @country == 'ca'
      @phone_number = "200-12345"
    elsif @country == 'uk'
      @phone_number = "500-12345"
    else
      @phone_number = "3422-42344"
    end
    render ('demo/contact_us')
  end

end
