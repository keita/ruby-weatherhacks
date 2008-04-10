require File.dirname(__FILE__) + '/spec_helper.rb'

describe WeatherHacks::LWWS::Forecast do
  before do
    @forecast = WeatherHacks::LWWS::Forecast.new($today)
  end

  it "can read author as a String" do
    @forecast.author.should be_a_kind_of(String)
  end

  it "can read location as a WeatherHacks::LWWS::Location" do
    @forecast.location.should be_a_kind_of(WeatherHacks::LWWS::Location)
  end

  it "can read title as a String" do
    @forecast.title.should be_a_kind_of(String)
  end

  it "can read link as a URI" do
    @forecast.link.should be_a_kind_of(URI)
  end

  it "can read forecastday as a String" do
    @forecast.forecastday.should be_a_kind_of(String)
  end

  it "can read day as a String" do
    @forecast.day.should match(/Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday/)
  end

  it "can read forecastdate as a Time" do
    @forecast.forecastdate.should be_a_kind_of(Time)
  end

  it "can read publictime as a Time" do
    @forecast.publictime.should be_a_kind_of(Time)
  end

  it "can read telop as a String" do
    @forecast.telop.should be_a_kind_of(String)
  end

  it "can read description as String" do
    @forecast.description.should be_a_kind_of(String)
  end

  it "can read image as a WeatherHacks::LWWS::Image" do
    @forecast.image.should be_a_kind_of(WeatherHacks::LWWS::Image)
  end

  it "can read celsius as a WeatherHacks::LWWS::Celsius" do
    @forecast.celsius.should be_a_kind_of(WeatherHacks::LWWS::Celsius)
  end

  it "can read fahrenheit as a WeatherHacks::LWWS::Fahrenheit" do
    @forecast.fahrenheit.should be_a_kind_of(WeatherHacks::LWWS::Fahrenheit)
  end

  it "can read pinpoints as a list of WeatherHacks::LWWS::PinpointLocation" do
    @forecast.pinpoints.each do |location|
      location.should be_a_kind_of(WeatherHacks::LWWS::PinpointLocation)
    end
  end

  it "can read copyright as a WeatherHacks::LWWS::Copyright" do
    @forecast.copyright.should be_a_kind_of(WeatherHacks::LWWS::Copyright)
  end

  after do
    @forecast = nil
  end
end

describe WeatherHacks::LWWS::Forecast, "#forecastday" do
  it "allows 'today'" do
    WeatherHacks::LWWS::Forecast.new($today).forecastday.should eql("today")
  end

  it "allows 'tomorrow'" do
    WeatherHacks::LWWS::Forecast.new($tomorrow).forecastday.should eql("tomorrow")
  end

  it "allows 'dayaftertomorrow'" do
    WeatherHacks::LWWS::Forecast.new($dayaftertomorrow).forecastday.should eql("dayaftertomorrow")
  end
end

describe WeatherHacks::LWWS::Location do
  before do
    @location = WeatherHacks::LWWS::Forecast.new($today).location
  end

  it "can read area as a String" do
    @location.area.should be_a_kind_of(String)
  end

  it "can read pref as a String" do
    @location.pref.should be_a_kind_of(String)
  end

  it "can read city as a String" do
    @location.city.should be_a_kind_of(String)
  end

  after do
    @location = nil
  end
end

describe WeatherHacks::LWWS::Image do
  before do
    @image = WeatherHacks::LWWS::Forecast.new($today).image
  end

  it "can read title as a String" do
    @image.title.should be_a_kind_of(String)
  end

  it "can read link as a URI" do
    @image.link.should be_a_kind_of(URI)
  end

  it "can read url as a URI" do
    @image.url.should be_a_kind_of(URI)
  end

  it "can read width as a Integer" do
    @image.width.should be_a_kind_of(Integer)
  end

  it "can read height as a Integer" do
    @image.height.should be_a_kind_of(Integer)
  end

  after do
    @image = nil
  end
end

describe WeatherHacks::LWWS::Temperature do
  before do
    forecast = WeatherHacks::LWWS::Forecast.new($today)
    @celsius = forecast.celsius
    @fahrenheit = forecast.fahrenheit
  end

  it "can read min of celsius as a Integer" do
    @celsius.min.should be_a_kind_of(Integer) if @celsius.min

  end

  it "can read max of celsius as a Integer" do
    @celsius.max.should be_a_kind_of(Integer) if @celsius.max
  end

  it "can read min of fahrenheit as a Float" do
    @fahrenheit.min.should be_a_kind_of(Float) if @fahrenheit.min
  end

  it "can read max of fahrenheit as a Float" do
    @fahrenheit.max.should be_a_kind_of(Float) if @fahrenheit.max
  end

  after do
    @celsius = nil
    @fahrenheit = nil
  end
end

describe WeatherHacks::LWWS::PinpointLocation do
  before do
    @pinpoints = WeatherHacks::LWWS::Forecast.new($today).pinpoints
  end

  it "can read title as a String" do
    @pinpoints.each do |location|
      location.title.should be_a_kind_of(String)
    end
  end

  it "can read link as a URI" do
    @pinpoints.each do |location|
      location.link.should be_a_kind_of(URI)
    end
  end

  it "can read publictime as a Time" do
    @pinpoints.each do |location|
      location.publictime.should be_a_kind_of(Time)
    end
  end

  after do
    @pinpoints = nil
  end
end

describe WeatherHacks::LWWS::Copyright do
  before do
    @copyright = WeatherHacks::LWWS::Forecast.new($today).copyright
  end

  it "can read title as a String" do
    @copyright.title.should be_a_kind_of(String)
  end

  it "can read link as a URI" do
    @copyright.link.should be_a_kind_of(URI)
  end

  it "can read image as a WeatherHacks::LWWS::Image" do
    @copyright.image.should be_a_kind_of(WeatherHacks::LWWS::Image)
  end

  it "can read providers as a list of WeatherHacks::LWWS::Provider" do
    @copyright.providers.each do |provider|
      provider.should be_a_kind_of(WeatherHacks::LWWS::Provider)
    end
  end

  after do
    @copyright = nil
  end
end

describe WeatherHacks::LWWS::Provider do
  before do
    @provider = WeatherHacks::LWWS::Forecast.new($today).copyright.providers[0]
  end

  it "can read name as a String" do
    @provider.name.should be_a_kind_of(String)
  end

  it "can read link as a URI" do
    @provider.link.should be_a_kind_of(URI)
  end

  after do
    @provider = nil
  end
end
