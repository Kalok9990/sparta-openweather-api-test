require 'httparty'
require 'json'

class MultipleCityRectangleZone
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/box/city?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityrect(lonleft, latbottom, lonright, lattop, zoom)
    @multi_weather_cityrect = JSON.parse(self.class.get("bbox=#{lonleft},#{latbottom},#{lonright},#{lattop},#{zoom}#{@key}").body)
  end

  def get_weather_city
    @multi_weather_cityrect
  end

  def get_weather_cod
    get_weather_city["cod"]
  end

  def get_weather_calc
    get_weather_city["calctime"]
  end

  def get_weather_cnt
    get_weather_city["cnt"]
  end

  def get_weather_list
    get_weather_city["list"]
  end

  def get_weather_id(query)
    query["id"]
  end

  def get_weather_dt(query)
    query["dt"]
  end

  def get_weather_name(query)
    query["name"]
  end

  def get_weather_coord(query)
    query["coord"]
  end

  def get_weather_lon(query)
    get_weather_coord(query)["Lon"]
  end

  def get_weather_lat(query)
    get_weather_coord(query)["Lat"]
  end

  def get_weather_main(query)
    query["main"]
  end

  def get_weather_maintemp(query)
    get_weather_main(query)["temp"]
  end

  def get_weather_mainpres(query)
    get_weather_main(query)["pressure"]
  end

  def get_weather_mainhum(query)
    get_weather_main(query)["humidity"]
  end

  def get_weather_maintemp_min(query)
    get_weather_main(query)["temp_min"]
  end

  def get_weather_maintemp_max(query)
    get_weather_main(query)["temp_max"]
  end

  def get_weather_mainsea(query)
    get_weather_main(query)["sea_level"]
  end

  def get_weather_maingrnd(query)
    get_weather_main(query)["grnd_level"]
  end

  def get_weather_wind(query)
    query["wind"]
  end

  def get_weather_windspeed(query)
    get_weather_wind(query)["speed"]
  end

  def get_weather_winddeg(query)
    get_weather_wind(query)["deg"]
  end

  def get_weather_clouds(query)
    query["clouds"]
  end

  def get_weather_cloudstoday(query)
    get_weather_clouds(query)["today"]
  end

  def get_weather_rain(query)
    query["rain"]
  end

  def get_weather_rain3h(query)
    get_weather_rain(query)["3h"]
  end

  def get_weather_snow(query)
    query["snow"]
  end

  def get_weather_snow3h(query)
    get_weather_snow(query)["3h"]
  end

  def get_weather_weather(query)
    query["weather"]
  end

  def get_weather_weatherid(weather)
    weather["id"]
  end

  def get_weather_weathermain(weather)
    weather["main"]
  end

  def get_weather_weatherdesc(weather)
    weather["description"]
  end

  def get_weather_weathericon(weather)
    weather["icon"]
  end
end

x = MultipleCityRectangleZone.new

# p x.get_weather_cityrect(12,32,15,37,10)
