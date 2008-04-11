module WeatherHacks
  module Version #:nodoc:
    MAJOR = 0
    MINOR = 2
    TINY  = 0

    STRING = [MAJOR, MINOR, TINY].join('.')
  end
  VERSION = Version::STRING

  module ForecastMap
    class Area
      attr_reader :name, :rss, :prefs
      def initialize(name, rss)
        @name = name
        @rss = rss
        @prefs = []
      end

      def pref(name, &block)
        pref = Pref.new(name)
        pref.instance_eval(&block)
        @prefs << pref
        PREF[pref.name] = pref
      end
    end

    class Pref
      attr_reader :name, :cities
      def initialize(name)
        @name = name
        @cities = []
      end

      def city(name, id, rss)
        city = City.new(name, id, rss)
        @cities << city
        CITY[city.name] = city
      end
    end

    class City
      attr_reader :name, :id, :rss
      def initialize(name, id, rss)
        @name = name
        @id = id
        @rss = rss
      end
    end

    AREA = Hash.new
    PREF = Hash.new
    CITY = Hash.new
    AREAS = Array.new

    def self.area(title, rss, &block)
      area = Area.new(title, rss)
      area.instance_eval(&block)
      AREA[area.name] = area
      AREAS << area
    end
  end
end

require "weatherhacks/lwws"
require "weatherhacks/forecastmap"

module WeatherHacks
  module_function

  def lwws(city, day = :all)
    LWWS.request(city, day)
  end
end
