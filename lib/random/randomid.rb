require "yaml"

class RandomCityId

  index = 0

  def get_random_number(size)
    @random = rand(size)
  end

  def get_random_id
    chosen_line = nil
    file = YAML.load_file("city_id.yml")
    file[get_random_number(file.length)]
  end
end
x = RandomCityId.new
# puts x.get_random_id
