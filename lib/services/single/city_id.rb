require 'httparty'
require 'json'

class SingleCityID
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?'

  def initialize
    @key = "&APPID=3b766b933ebc34192b1c09261a569fdd"
  end

  def get_weather_cityid(cityid)
    @single_weather_cityid = JSON.parse(self.class.get("id=#{cityid}#{@key}").body)
  end

  def get_weather_city
    @single_weather_cityid
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
end

x = SingleCityID.new
# puts x.get_weather_cityid(14256)
