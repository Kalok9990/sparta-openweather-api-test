require 'spec_helper'

describe Weatherios do

  context 'requesting information on multiple cities in a cycle works correctly' do

    before(:all) do
      @weatherio = Weatherios.new.multiple_cycle
      @weatherio.get_weather_citycycle(55.5, 37.5, 10)
    end

    it "should respond to a hash" do
      expect(@weatherio.get_weather_city).to be_kind_of(Hash)
    end

    it "should have a message as a string" do
      expect(@weatherio.get_weather_message).to be_kind_of(String).or be_nil
    end

    it "should have a code status of 200" do
      expect(@weatherio.get_weather_cod).to eq "200"
    end

    it "should have a count of 50 or less" do
      expect(@weatherio.get_weather_cnt).to be_kind_of(Integer).and be <= 50
    end

    it "should have a list as an array" do
      expect(@weatherio.get_weather_list).to be_kind_of(Array)
    end

    it "should have an id as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_id(query)).to be_kind_of(Integer)
      end
    end

    it "should have a name as a string" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_name(query)).to be_kind_of(String)
      end
    end

    it "should have a coord that is a Hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_coord(query)).to be_kind_of(Hash)
      end
    end

    it "should have a lon in the coord as a float or an integer and between -180 and 180" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_lon(query)).to be_kind_of(Float).or be_kind_of(Integer).and be_between(-180, 180).inclusive
      end
    end

    it "should have a lat in the coord as a float or an integer and between -90 and 90" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_lat(query)).to be_kind_of(Float).or be_kind_of(Integer).and be_between(-90, 90).inclusive
      end
    end

    it "should have a main as a hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_main(query)).to be_kind_of(Hash)
      end
    end

    it "should have a temperature in the main section as a float or an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_maintemp(query)).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it "should have a pressure in the main section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_mainpres(query)).to be_kind_of(Integer).or be_kind_of(Float)
      end
    end

    it "should have a humidity in the main section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_mainhum(query)).to be_kind_of(Integer).or be_kind_of(Integer)
      end
    end

    it "should have a temp_min in the main section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_maintemp_min(query)).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it "should have a temp_max in the main section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_maintemp_max(query)).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it "should have a sea level in the main section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_mainsea(query)).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
      end
    end

    it "should have a ground level in the main section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_maingrnd(query)).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
      end
    end

    it "should have a dt as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_dt(query)).to be_kind_of(Integer)
      end
    end

    it "should have a wind as a Hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_wind(query)).to be_kind_of(Hash)
      end
    end

    it "should have a speed in the wind section as a float or an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_windspeed(query)).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it "should have a degrees in the wind section as a float or integer between 0 and 360" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_winddeg(query)).to be_nil.or be_kind_of(Float).or be_kind_of(Integer).and be_between(0,360).inclusive
      end
    end

    it "should have a sys as a hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_sys(query)).to be_kind_of(Hash)
      end
    end

    it "should have a sys as a hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_syscountry(query)).to be_kind_of(String)
      end
    end

    it "should have a type in the sys section as an integer or be nil" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_systype(query)).to be_kind_of(Integer).or be_nil
      end
    end

    it "should have a id in the sys section as an integer or nil" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_sysid(query)).to be_kind_of(Integer).or be_nil
      end
    end

    it "should have a message in the sys section as a float" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_sysmessage(query)).to be_kind_of(Float).or be_nil
      end
    end

    it "should have a country code in the sys section as a string" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_syscountry(query)).to be_kind_of(String)
      end
    end

    it "should have a sunrise in the sys section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_syssunrise(query)).to be_kind_of(Integer).or be_nil
      end
    end

    it "should have a sunset in the sys section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_syssunset(query)).to be_kind_of(Integer).or be_nil
      end
    end

    it "should have a rain as a hash or to be nil" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_rain(query)).to be_kind_of(Hash).or be_nil
      end
    end

    it "should have a 3h if there is a rain section" do
      @weatherio.get_weather_list.each do |query|
        if @weatherio.get_weather_rain(query) != nil
          expect(@weatherio.get_weather_rain3h(query)).to be_kind_of(Float)
        end
      end
    end

    it "should have a snow as a hash or to be nil" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_snow(query)).to be_kind_of(Hash).or be_nil
      end
    end

    it "should have a 3h if there is a snow section" do
      @weatherio.get_weather_list.each do |query|
        if @weatherio.get_weather_snow(query) != nil
          expect(@weatherio.get_weather_snow3h(query)).to be_kind_of(Float)
        end
      end
    end

    it "should have a clouds as a Hash" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_clouds(query)).to be_kind_of(Hash)
      end
    end

    it "should have an all in clouds section as an integer" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_cloudsall(query)).to be_kind_of(Integer)
      end
    end

    it "should have a weather section as an array" do
      @weatherio.get_weather_list.each do |query|
        expect(@weatherio.get_weather_weather(query)).to be_kind_of(Array)
      end
    end

    it "should have a weather id in the weather section as an integer" do
      @weatherio.get_weather_list.each do |query|
        @weatherio.get_weather_weather(query).each do |weather|
          expect(@weatherio.get_weather_weatherid(weather)).to be_kind_of(Integer)
        end
      end
    end

    it "should have a weather main in the weather section as an integer" do
      @weatherio.get_weather_list.each do |query|
        @weatherio.get_weather_weather(query).each do |weather|
          expect(@weatherio.get_weather_weathermain(weather)).to be_kind_of(String)
        end
      end
    end

    it "should have a weather description in the weather section as an integer" do
      @weatherio.get_weather_list.each do |query|
        @weatherio.get_weather_weather(query).each do |weather|
          expect(@weatherio.get_weather_weatherdesc(weather)).to be_kind_of(String)
        end
      end
    end

    it "should have a weather icon in the weather section as an integer" do
      @weatherio.get_weather_list.each do |query|
        @weatherio.get_weather_weather(query).each do |weather|
          expect(@weatherio.get_weather_weathericon(weather)).to be_kind_of(String)
        end
      end
    end
  end
end
