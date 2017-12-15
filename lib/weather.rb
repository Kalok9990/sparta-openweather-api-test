require_relative 'services/single/city_id'
require_relative 'services/single/city_name'
require_relative 'services/single/coordinates'
require_relative 'services/single/zip'
require_relative 'services/multiple/city_ids'
require_relative 'services/multiple/cycle'
require_relative 'services/multiple/rectangle_zone'

class Weatherios

  def single_city_id
    SingleCityID.new
  end

  def single_city_name
    SingleCityName.new
  end

  def single_coordinates
    SingleCityCoord.new
  end

  def single_zip
    SingleCityZip.new
  end

  def multiple_city_ids
    MultipleCityIds.new
  end

  def multiple_cycle
    MultipleCityCycle.new
  end

  def multiple_rectangle_zone
    MultipleCityRectangleZone.new
  end

end
