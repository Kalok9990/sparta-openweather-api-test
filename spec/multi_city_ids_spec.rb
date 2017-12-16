require 'spec_helper'

describe Weatherios do

  context 'requesting information on multiple cities coordinate works correctly' do

    before(:all) do
      @weatherio = Weatherios.new.multiple_city_ids
      @weatherio.get_weather_cityids("524901,703448,2643743")
    end

    it "should respond to a Hash" do
      expect(@weatherio.get_weather_city).to be_kind_of(Hash)
    end

    it "should respond with a cnt as an integer between 1 and 20" do
      expect(@weatherio.get_weather_cnt).to be_kind_of(Integer).and be_between(1, 20).inclusive
    end

    it "should have a list of the queries as a Hash" do
      expect(@weatherio.get_weather_list).to be_kind_of(Array)
    end

    it "should have a coord that is a Hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_coord(query)).to be_kind_of(Hash)
      end
    end

    # it "should have a lon in the coord as a float or an integer and between -180 and 180" do
    #   expect(@weatherio.get_weather_lon).to be_kind_of(Float).or be_kind_of(Integer)
    #   expect(@weatherio.get_weather_lon).to be_between(-180, 180).inclusive
    # end
    #
    # it "should have a lat in the coord as a float or integer and between -90 and 90" do
    #   expect(@weatherio.get_weather_lat).to be_kind_of(Float).or be_kind_of(Integer)
    #   expect(@weatherio.get_weather_lat).to be_between(-90, 90).inclusive
    # end
    #
    # it "should have a weather section as an array" do
    #   expect(@weatherio.get_weather_weather).to be_kind_of(Array)
    # end
    #
    # it "should have a weather id in the weather section as an integer" do
    #   expect(@weatherio.get_weather_weatherid).to be_kind_of(Integer)
    # end
    #
    # it "should have a weather main in the weather section as a String" do
    #   expect(@weatherio.get_weather_weathermain).to be_kind_of(String)
    # end
    #
    # it "should have a weather description in the weather section as a String" do
    #   expect(@weatherio.get_weather_weatherdesc).to be_kind_of(String)
    # end
    #
    # it "should have a weather icon in the weather section as an string" do
    #   expect(@weatherio.get_weather_weathericon).to be_kind_of(String)
    # end
    #
    # it "should have a base as a string" do
    #   expect(@weatherio.get_weather_base).to be_kind_of(String)
    # end
    #
    # it "should have a main as a hash" do
    #   expect(@weatherio.get_weather_main).to be_kind_of(Hash)
    # end
    #
    # it "should have a temperature in the main section as a Float" do
    #   expect(@weatherio.get_weather_maintemp).to be_kind_of(Float)
    # end
    #
    # it "should have a pressure in the main section as an integer" do
    #   expect(@weatherio.get_weather_mainpres).to be_kind_of(Integer).or be_kind_of(Float)
    # end
    #
    # it "should have a humidity in the main section as an integer" do
    #   expect(@weatherio.get_weather_mainhum).to be_kind_of(Integer)
    # end
    #
    # it "should have a temp_min in the main section as an integer" do
    #   expect(@weatherio.get_weather_maintemp_min).to be_kind_of(Float)
    # end
    #
    # it "should have a temp_max in the main section as an integer" do
    #   expect(@weatherio.get_weather_maintemp_max).to be_kind_of(Float)
    # end
    #
    # it "should have a wind as a Hash" do
    #   expect(@weatherio.get_weather_wind).to be_kind_of(Hash)
    # end
    #
    # it "should have a speed in the wind section as a float" do
    #   expect(@weatherio.get_weather_windspeed).to be_kind_of(Float)
    # end
    #
    # it "should have a degrees in the wind section as a float or integer between 0 and 360" do
    #   expect(@weatherio.get_weather_winddeg).to be_kind_of(Float).or be_kind_of(Integer)
    #   expect(@weatherio.get_weather_winddeg).to be_between(0,360).inclusive
    # end
    #
    # it "should have a clouds as a Hash" do
    #   expect(@weatherio.get_weather_clouds).to be_kind_of(Hash)
    # end
    #
    # it "should have an all in clouds section as an integer" do
    #   expect(@weatherio.get_weather_cloudsall).to be_kind_of(Integer)
    # end
    #
    # it "should have a rain as a hash or to be nil" do
    #   expect(@weatherio.get_weather_rain).to be_kind_of(Hash).or be_nil
    # end
    #
    # it "should have a 3h if there is a rain section" do
    #   if @weatherio.get_weather_rain != nil
    #     expect(@weatherio.get_weather_rain3h).to be_kind_of(Hash)
    #   end
    # end
    #
    # it "should have a dt as an integer" do
    #   expect(@weatherio.get_weather_dt).to be_kind_of(Integer)
    # end
    #
    # it "should have a sys as a hash" do
    #   expect(@weatherio.get_weather_sys).to be_kind_of(Hash)
    # end
    #
    # it "should have a type in the sys section as an integer or be nil" do
    #   expect(@weatherio.get_weather_systype).to be_kind_of(Integer).or be_nil
    # end
    #
    # it "should have a id in the sys section as an integer or nil" do
    #   expect(@weatherio.get_weather_sysid).to be_kind_of(Integer).or be_nil
    # end
    #
    # it "should have a message in the sys section as a float" do
    #   expect(@weatherio.get_weather_sysmessage).to be_kind_of(Float)
    # end
    #
    # it "should have a country code in the sys section as a string" do
    #   expect(@weatherio.get_weather_syscountry).to be_kind_of(String)
    # end
    #
    # it "should have a sunrise in the sys section as an integer" do
    #   expect(@weatherio.get_weather_syssunrise).to be_kind_of(Integer)
    # end
    #
    # it "should have a sunset in the sys section as an integer" do
    #   expect(@weatherio.get_weather_syssunset).to be_kind_of(Integer)
    # end
    #
    # it "should have an id as an integer" do
    #   expect(@weatherio.get_weather_id).to be_kind_of(Integer)
    # end
    #
    # it "should have a name as a string" do
    #   expect(@weatherio.get_weather_name).to be_kind_of(String)
    # end

  end
end
