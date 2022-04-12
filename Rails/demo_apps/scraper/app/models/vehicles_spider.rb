require 'kimurai'

class VehiclesSpider < Kimurai::Base
  @name = "vehicles_spider"
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//div[@class='vehicle-card   vehicle-card-with-reviews']").each do |vehicle|
      item = {}

      item[:title]      = vehicle.css('h2.title')&.text&.squish
      item[:price]      = vehicle.css('span.primary_price')&.text&.squish&.delete('^0-9').to_i
      item[:stock_type] = vehicle.css('p.stock-type')&.text&.squish
      item[:miles]      = vehicle.css('div.mileage')&.text&.squish&.delete('^0-9').to_i
      item[:exterior_color] = vehicle.css('div.vehicle-feature')[0]&.text&.squish.gsub('Ext. Color: ', '')
      item[:interior_color] = vehicle.css('div.vehicle-feature')[1]&.text&.squish.gsub('Int. Color: ', '')
      item[:transmission] = vehicle.css('div.vehicle-feature')[2]&.text&.squish.gsub('Transmission: ', '')
      item[:drivetrain]   = vehicle.css('div.vehicle-feature')[3]&.text&.squish.gsub('Drivetrain: ', '')

      Vehicle.where(item).first_or_create
    end
  end
end






