require 'httparty'
require 'json'
require_relative '../../random_data/random_city_json'

class SingleCityName
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityname(city)
    @single_weather_cityname = JSON.parse(self.class.get("q=#{city}#{@key}").body)
  end

  def get_random_city
    RandomCity.new.get_random_cityname
  end

  def get_weather_city
    @single_weather_cityname
  end

  def get_weather_status
    get_weather_city["cod"]
  end

  def get_weather_coord
    get_weather_city["coord"]
  end

  def get_weather_lon
    get_weather_coord["lon"]
  end

  def get_weather_lat
    get_weather_coord["lat"]
  end

  def get_weather_weather
    get_weather_city["weather"]
  end

  def get_weather_weatherid
    get_weather_weather[0]["id"]
  end

  def get_weather_weathermain
    get_weather_weather[0]["main"]
  end

  def get_weather_weatherdesc
    get_weather_weather[0]["description"]
  end

  def get_weather_weathericon
    get_weather_weather[0]["icon"]
  end

  def get_weather_base
    get_weather_city["base"]
  end

  def get_weather_main
    get_weather_city["main"]
  end

  def get_weather_maintemp
    get_weather_main["temp"]
  end

  def get_weather_mainpres
    get_weather_main["pressure"]
  end

  def get_weather_mainhum
    get_weather_main["humidity"]
  end

  def get_weather_maintemp_min
    get_weather_main["temp_min"]
  end

  def get_weather_maintemp_max
    get_weather_main["temp_max"]
  end

  def get_weather_mainsea
    get_weather_main["sea_level"]
  end

  def get_weather_maingrnd
    get_weather_main["grnd_level"]
  end

  def get_weather_visibility
    get_weather_city["visibility"]
  end

  def get_weather_wind
    get_weather_city["wind"]
  end

  def get_weather_windspeed
    get_weather_wind["speed"]
  end

  def get_weather_winddeg
    get_weather_wind["deg"]
  end

  def get_weather_clouds
    get_weather_city["clouds"]
  end

  def get_weather_cloudsall
    get_weather_clouds["all"]
  end

  def get_weather_rain
    get_weather_city["rain"]
  end

  def get_weather_rain3h
    get_weather_rain["3h"]
  end

  def get_weather_snow
    get_weather_city["snow"]
  end

  def get_weather_snow3h
    get_weather_snow["3h"]
  end

  def get_weather_dt
    get_weather_city["dt"]
  end

  def get_weather_sys
    get_weather_city["sys"]
  end

  def get_weather_systype
    get_weather_sys["type"]
  end

  def get_weather_sysid
    get_weather_sys["id"]
  end

  def get_weather_sysmessage
    get_weather_sys["message"]
  end

  def get_weather_syscountry
    get_weather_sys["country"]
  end

  def get_weather_syssunrise
    get_weather_sys["sunrise"]
  end

  def get_weather_syssunset
    get_weather_sys["sunset"]
  end

  def get_weather_id
    get_weather_city["id"]
  end

  def get_weather_name
    get_weather_city["name"]
  end
end

x = SingleCityName.new

# p x.get_weather_cityname("London","uk")
