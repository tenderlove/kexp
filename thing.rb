require 'json'

def t time
  Time.at(time[/\d+/].to_i / 1000).utc
end

ARGV.each do |json|
  doc = JSON.parse File.read json
  doc['Plays'].each do |play|
    next unless play['Artist'] && play['Release']
    #p t(play['AirDate']) => [play['Artist']['Name'], play['Release']['Name']]
    p [play['Artist']['Name'], play['Release']['Name']]
  end
end
