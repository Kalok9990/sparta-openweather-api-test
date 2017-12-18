require "json"

class RandomCity

  index = 0

  def get_random_number(size)
    @random = rand(size)
  end

  def parse_file
    JSON.parse(File.read("lib/random_data/iso_country_data.json"))
  end

  def get_random_cityname
    name_array = []
    random_num = get_random_number(parse_file.length)
    name = parse_file[random_num]["CapitalName"]
    country = parse_file[random_num]["CountryCode"]

    name_array.push(name.gsub(" ",""))
    name_array.push(country)
    name_array.join(",")
  end

  def get_random_coord
    coord_array = []
    random_num = get_random_number(parse_file.length)

    lat = parse_file[random_num]["CapitalLatitude"]
    lon = parse_file[random_num]["CapitalLongitude"]
    coord_array.push(lat)
    coord_array.push(lon)
    coord_array
  end

end
x = RandomCity.new
puts x.get_random_coord.class
