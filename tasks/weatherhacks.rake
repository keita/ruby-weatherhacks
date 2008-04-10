namespace :weatherhacks do
  desc 'Download forecastmap.xml'
  task :download_forecastmap do
    url = "http://weather.livedoor.com/forecast/rss/forecastmap.xml"
    sh %{wget -O tmp/forecastmap.xml #{url}}
  end

  desc 'Generate forecastmap.rb'
  task :forecastmap do
    sh %{xsltproc -o lib/weatherhacks/forecastmap.rb misc/forecastmap.xsl tmp/forecastmap.xml}
  end

  desc 'Download test data'
  task :download_test_lwws_data do
    url = "http://weather.livedoor.com/forecast/webservice/rest/v1?city=113&day="
    sh %{curl -o tmp/lwws_today.xml "#{url + "today"}"}
    sh %{curl -o tmp/lwws_tomorrow.xml "#{url + "tomorrow"}"}
    sh %{curl -o tmp/lwws_dayaftertomorrow.xml "#{url + "dayaftertomorrow"}"}
  end
end
