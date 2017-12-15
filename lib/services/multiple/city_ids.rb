require 'httparty'
require 'json'

class MultipleCityIds
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/group?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityids(cityids)
    @single_weather_cityids = JSON.parse(self.class.get("id=#{cityids}&units=metric#{@key}").body)
  end
end

x = MultipleCityIds.new

# p x.get_weather_cityids("524901,703448,2643743")
