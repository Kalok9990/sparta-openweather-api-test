require 'spec_helper'

describe Weatherios do

  context 'requesting information on a single city id works correctly' do

    before(:all) do
      @weatherio = Weatherios.new.single_city_id
      @weatherio.get_weather_cityid(14256)
    end

    it "should respond to a Hash" do
      expect(@weatherio.get_weather_city).to be_kind_of(Hash)
    end

    it "should respond with a cod of 200" do
      expect(@weatherio.get_weather_status).to eq 200
    end

    it "should have a coord that is a Hash" do
      expect(@weatherio.get_weather_coord).to be_kind_of(Hash)
    end

    it "should have a lon in the coord as a float and between -180 and 180" do
      expect(@weatherio.get_weather_lon).to be_kind_of(Float)
      expect(@weatherio.get_weather_lon).to be_between(-180, 180).inclusive
    end

    it "should have a lat in the coord as a float and between -180 and 180" do
      expect(@weatherio.get_weather_lat).to be_kind_of(Float)
      expect(@weatherio.get_weather_lat).to be_between(-180, 180).inclusive
    end

    it "should have a weather section as an array" do
      expect(@weatherio.get_weather_weather).to be_kind_of(Array)
    end

    it "should have a weather id in the weather section as an integer" do
      expect(@weatherio.get_weather_weatherid).to be_kind_of(Integer)
    end

    it "should have a weather main in the weather section as a String" do
      expect(@weatherio.get_weather_weathermain).to be_kind_of(String)
    end

    it "should have a weather description in the weather section as a String" do
      expect(@weatherio.get_weather_weatherdesc).to be_kind_of(String)
    end

    it "should have a weather icon in the weather section as an string" do
      expect(@weatherio.get_weather_weathericon).to be_kind_of(String)
    end

    it "should have a base as a string" do
      expect(@weatherio.get_weather_base).to be_kind_of(String)
    end

    it "should have a main as a hash" do
      expect(@weatherio.get_weather_main).to be_kind_of(Hash)
    end

    it "should have a temperature in the main section as a Float" do
      expect(@weatherio.get_weather_maintemp).to be_kind_of(Float)
    end

    it "should have a pressure in the main section as an integer" do
      expect(@weatherio.get_weather_mainpres).to be_kind_of(Integer)
    end

    it "should have a humidity in the main section as an integer" do
      expect(@weatherio.get_weather_mainhum).to be_kind_of(Integer)
    end
  end
end
