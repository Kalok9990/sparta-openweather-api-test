require "yaml"

class RandomCityId

  index = 0

  def get_random_id
    file = YAML.load_file("lib/random_data/city_id.yml")
    file[rand(file.length)]
  end
end

x = RandomCityId.new
# puts x.get_random_id
