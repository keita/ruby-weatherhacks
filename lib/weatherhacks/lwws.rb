require "uri"
require "rexml/document"
require "net/http"
require "time"

module WeatherHacks::LWWS
  URL = URI.parse("http://weather.livedoor.com/forecast/webservice/rest/v1")

  def self.path(city_id, day) #:nodoc:
    URL.path + "?city=#{city_id}&day=#{day}"
  end

  class Error < StandardError
    attr_reader :res
    def initialize(res)
      @res = res
    end
  end

  class Forecast
    attr_reader :author, :location, :title, :link, :forecastday, :day
    attr_reader :forecastdate, :publictime, :telop, :description, :image
    attr_reader :celsius, :fahrenheit, :pinpoints, :copyright

    def initialize(doc)
      raise ArgumentError, doc unless doc.kind_of? REXML::Document
      elt = doc.root.elements["/lwws"]
      @author = elt.elements["author"].text
      @location = Location.new(elt.elements["location"])
      @title = elt.elements["title"].text
      @link = URI.parse(elt.elements["link"].text)
      @forecastday = elt.elements["forecastday"].text
      @day = elt.elements["day"].text
      @forecastdate = Time.parse(elt.elements["forecastdate"].text)
      @publictime = Time.parse(elt.elements["publictime"].text)
      @telop = elt.elements["telop"].text
      @description = elt.elements["description"].text
      @image = Image.new(elt.elements["image"])
      @celsius, @fahrenheit = Temperature.create(elt.elements["temperature"])
      @pinpoints = Array.new
      elt.elements.collect("pinpoint/location") do |node|
        @pinpoints << PinpointLocation.new(node)
      end
      @copyright = Copyright.new(elt.elements["copyright"])
    end
  end

  class Location
    attr_reader :city, :area, :pref
    def initialize(elt)
      @area = elt.attributes["area"]
      @pref = elt.attributes["pref"]
      @city = elt.attributes["city"]
    end
  end

  class Image
    attr_reader :title, :link, :url, :width, :height
    def initialize(elt)
      @title = elt.elements["title"].text
      @link = URI.parse(elt.elements["link"].text)
      @url = URI.parse(elt.elements["url"].text)
      @width = elt.elements["width"].text.to_i
      @height = elt.elements["height"].text.to_i
    end
  end

  class Temperature
    attr_reader :max, :min
    def self.create(elt)
      return Celsius.new(elt), Fahrenheit.new(elt)
    end
  end

  class Celsius < Temperature
    def initialize(elt)
      max = elt.elements["max/celsius"].text
      @max = max.to_i if max
      min = elt.elements["min/celsius"].text
      @min = min.to_i if min
    end
  end

  class Fahrenheit < Temperature
    def initialize(elt)
      max = elt.elements["max/fahrenheit"].text
      @max = max.to_f if max
      min = elt.elements["min/fahrenheit"].text
      @min = min.to_f if min
    end
  end

  class PinpointLocation
    attr_reader :title, :link, :publictime
    def initialize(elt)
      raise ArgumentError, elt unless elt.kind_of? REXML::Element
      @title = elt.elements["title"].text
      @link = URI.parse(elt.elements["link"].text)
      @publictime = Time.parse(elt.elements["publictime"].text)
    end
  end

  class Copyright
    attr_reader :title, :link, :image, :providers
    def initialize(elt)
      @title = elt.elements["title"].text
      @link = URI.parse(elt.elements["link"].text)
      @image = Image.new(elt.elements["image"])
      @providers = Array.new
      elt.each_element("provider") do |provider|
        @providers << Provider.new(provider)
      end
    end
  end

  class Provider
    attr_reader :name, :link
    def initialize(elt)
      @name = elt.attributes["name"]
      @link = URI.parse(elt.attributes["link"])
    end
  end

  class << self

    # Returns a Forecast object.
    # city_id:: city id
    # day:: :today, :tomorrow or :dayaftertomorrow
    def request(city, day = :all)
      city_id = if city.kind_of?(String)
                  WeatherHacks::ForecastMap::CITY[city].id
                else city end
      unless day.to_s =~ /today|tomorrow|dayaftertomorrow|all/
        raise ArgumentError, day
      end
      if day == :all
        return [ request(city, :today),
                 request(city, :tomorrow),
                 request(city, :dayaftertomorrow) ]
      end
      req = Net::HTTP::Get.new(path(city_id, day.to_s))
      http = Net::HTTP.new(URL.host)
      case res = http.request(req)
      when Net::HTTPSuccess
        Forecast.new(REXML::Document.new(res.body))
      else
        raise Error.new(res)
      end
    end

    alias [] request
  end
end
