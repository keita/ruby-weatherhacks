require "rubygems"
require "rtask"

RTask.new

desc "Run the specs"
task :spec do
  sh "bacon"
end

desc 'Update forecastmap.rb'
task :forecastmap do
  # download forecastmap.xml
  url = "http://weather.livedoor.com/forecast/rss/forecastmap.xml"
  sh "wget -O forecastmap.xml #{url}"
  # generate
  out = "lib/weatherhacks/forecastmap.rb"
  xsl = "misc/forecastmap.xsl"
  sh "xsltproc -o #{out} #{xsl} forecastmap.xml"
  # remove
  sh "rm forecastmap.xml"
end

