##
# Get playlist info from KEXP

require 'net/http'
require 'uri'

LOC = "http://cache.kexp.org/cache/plays?startTime=%d-%02d-%02dT00:00Z&endTime=%d-%02d-%02dT23:59Z&channel=1"

url = URI(LOC)

http = Net::HTTP.new url.host, url.port
http.start

[2015].each do |y|
  [10].each do |m|
    1.upto(31) do |d|
      url = URI(LOC % [y, m, d, y, m, d])
      response = http.request(Net::HTTP::Get.new(url.request_uri))
      File.write "#{y}-#{m}-#{i}.json", response.body
    end
  end
end
