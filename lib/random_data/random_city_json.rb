require "json"

class RandomCityName

  index = 0

  def get_random_number(size)
    @random = rand(size)
  end

  def parse_file
    File.read("lib/random_data/iso_country_data.json")
    file = JSON.parse(json)
  end

  def get_random_cityname
    random_num = get_random_number(file.length)
    name = parse_file[random_num]["CapitalName"]
  end

  def get_random_citycountry
    random_num = get_random_number(file.length)
    country = parse_file[random_num]["CountryCode"]
  end

  def get_random_coord
    name_array = []

    random_num = get_random_number(file.length)

    lat = file[random_num]["CapitalLatitude"]
    lon = file[random_num]["CapitalLongitude"]

    name_array.push(lat)
    name_array.push(lon)
  end
end
x = RandomCityName.new
# puts x.get_random_name
