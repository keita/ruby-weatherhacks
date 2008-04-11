$LOAD_PATH.unshift File.join(File.join(File.dirname(__FILE__), ".."), "lib")
require "weatherhacks"
require "rubygems"
require "bacon"

include WeatherHacks::LWWS

$today, $tomorrow, $dayaftertomorrow = WeatherHacks.lwws("松江")

describe "WeatherHacks::LWWS::Forecast" do

  def forecast(&block)
    [$today, $tomorrow, $dayaftertomorrow].each {|f| yield f }
  end

  it "#author" do
    forecast {|f| f.author.should.be.kind_of(String) }
  end

  it "#location" do
    forecast {|f| f.location.should.be.kind_of(::Location) }
  end

  it "#title" do
    forecast {|f| f.title.should.be.kind_of(String) }
  end

  it "#link" do
    forecast {|f| f.link.should.be.kind_of(URI) }
  end

  it "#forecastday" do
    $today.forecastday.should == "today"
    $tomorrow.forecastday.should == "tomorrow"
    $dayaftertomorrow.forecastday.should == "dayaftertomorrow"
  end

  it "#day" do
    forecast {|f| f.day.should =~ /(Sun|Mon|Tues|Wednes|Thurs|Fri|Satur)day/ }
  end

  it "#forecastdate" do
    forecast {|f| f.forecastdate.should.be.kind_of(Time) }
  end

  it "#publictime" do
    forecast {|f| f.publictime.should.be.kind_of(Time) }
  end

  it "#telop" do
    forecast {|f| f.telop.should.be.kind_of(String) }
  end

  it "#description" do
    forecast {|f| f.description.should.be.kind_of(String) }
  end

  it "#image" do
    forecast {|f| f.image.should.be.kind_of(Image) }
  end

  it "#celsius" do
    forecast {|f| f.celsius.should.be.kind_of(Celsius) }
  end

  it "#fahrenheit" do
    forecast {|f| f.fahrenheit.should.be.kind_of(Fahrenheit) }
  end

  it "#pinpoints" do
    forecast do |f|
      f.pinpoints.each do |location|
        location.should.be.kind_of(PinpointLocation)
      end
    end
  end

  it "#copyright" do
    forecast{|f| f.copyright.should.be.kind_of(Copyright) }
  end
end

describe "WeatherHacks::LWWS::Location" do
  before do
    @location = $today.location
  end

  it "area" do
    @location.area.should.be.kind_of(String)
  end

  it "pref" do
    @location.pref.should.be.kind_of(String)
  end

  it "city" do
    @location.city.should.be.kind_of(String)
  end

  after do
    @location = nil
  end
end

describe "WeatherHacks::LWWS::Image" do
  before do
    @image = $today.image
  end

  after do
    @image = nil
  end

  it "title" do
    @image.title.should.be.kind_of(String)
  end

  it "link" do
    @image.link.should.be.kind_of(URI)
  end

  it "url" do
    @image.url.should.be.kind_of(URI)
  end

  it "width" do
    @image.width.should.be.kind_of(Integer)
  end

  it "height" do
    @image.height.should.be.kind_of(Integer)
  end
end

describe "WeatherHacks::LWWS::Temperature" do
  before do
    @celsius = $today.celsius
    @fahrenheit = $today.fahrenheit
  end

  after do
    @celsius = nil
    @fahrenheit = nil
  end

  it "min celsius" do
    @celsius.min.should.be.kind_of(Integer) if @celsius.min
  end

  it "max celsius" do
    @celsius.max.should.be.kind_of(Integer) if @celsius.max
  end

  it "min fahrenheit" do
    @fahrenheit.min.should.be.kind_of(Float) if @fahrenheit.min
  end

  it "max fahrenheit" do
    @fahrenheit.max.should.be.kind_of(Float) if @fahrenheit.max
  end
end

describe "WeatherHacks::LWWS::PinpointLocation" do
  before do
    @pinpoints = $today.pinpoints
  end

  after do
    @pinpoints = nil
  end

  it "title" do
    @pinpoints.each do |location|
      location.title.should.be.kind_of(String)
    end
  end

  it "link" do
    @pinpoints.each do |location|
      location.link.should.be.kind_of(URI)
    end
  end

  it "publictime" do
    @pinpoints.each do |location|
      location.publictime.should.be.kind_of(Time)
    end
  end
end

describe "WeatherHacks::LWWS::Copyright" do
  before do
    @copyright = $today.copyright
  end

  after do
    @copyright = nil
  end

  it "title" do
    @copyright.title.should.be.kind_of(String)
  end

  it "link" do
    @copyright.link.should.be.kind_of(URI)
  end

  it "image" do
    @copyright.image.should.be.kind_of(WeatherHacks::LWWS::Image)
  end

  it "providers" do
    @copyright.providers.each do |provider|
      provider.should.be.kind_of(WeatherHacks::LWWS::Provider)
    end
  end

end

describe "WeatherHacks::LWWS::Provider" do
  before do
    @provider = $today.copyright.providers[0]
  end

  after do
    @provider = nil
  end

  it "name" do
    @provider.name.should.be.kind_of(String)
  end

  it "link" do
    @provider.link.should.be.kind_of(URI)
  end
end
