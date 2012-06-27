require 'nokogiri'
require 'open-uri'

module CityData
  class CityIndustries
    attr_accessor :most_common

    def initialize(list_of_industries)
      self.most_common = list_of_industries
    end

    def self.find_by_city(address)
      url = "http://www.city-data.com/city/#{address[:name]}-#{address[:state]}.html"
      doc = Nokogiri::HTML(open(url))
      industries = doc.css("#hD0_0 li").map { |item| item.child.text }
      CityData::CityIndustries.new(industries)
    end
  end
end
