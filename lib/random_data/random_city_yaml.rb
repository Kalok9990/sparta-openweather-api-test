require "yaml"

class RandomCityId

  def yaml_file
    YAML.load_file("lib/random_data/city_id.yml")
  end

  def get_random_id
    yaml_file[rand(yaml_file.length)]
  end

  def get_multiple_random_ids(number)
    id_array = []
    index = 0
    while index < number
      id_array.push(get_random_id)
      index += 1
    end
    id_array.join(",")
  end
end

x = RandomCityId.new
# puts x.get_multiple_random_ids(4)
