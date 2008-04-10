require 'spec'
ROOT = File.join(File.dirname(__FILE__), "..")
$LOAD_PATH << File.join(ROOT, "lib")
require "weatherhacks"

$today =
  REXML::Document.new(File.read(File.join(ROOT, "tmp", "lwws_today.xml")))
$tomorrow =
  REXML::Document.new(File.read(File.join(ROOT, "tmp", "lwws_tomorrow.xml")))
$dayaftertomorrow =
  REXML::Document.new(File.read(File.join(ROOT, "tmp", "lwws_dayaftertomorrow.xml")))
