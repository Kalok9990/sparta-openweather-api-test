require "yaml"

class RandomCityId

  index = 0

  def get_random_number(size)
    @random = rand(size)
  end

  def get_random_id

    file = YAML.load_file("city_id.yml")
    @rand_id = File.new(file)


    # chosen_line = nil
    # File.foreach("data.txt").each_with_index do |line, number|
    #   chosen_line = line if rand < 1.0/(number+1)
    # end
    # return chosen_line
  end
end
x = RandomCityId.new
puts x.get_random_id
