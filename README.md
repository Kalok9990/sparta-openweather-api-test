# Sparta-Openweathe-API-Test - Integration Testing

## About Repository

I was given a live API to test. The API that I used was the OpenWeather API. This exercise was to help me develop my knowledge and skills of consuming an API and testing the information returned. I made the tests dynamic as well to attempt to prevent the Pesticide Paradox from occurring, so there is a YAML file and a JSON file with a number of city ids or information. This was used to randomly select one of these to test.

## Documentation

See https://openweathermap.org/api for more information on the OpenWeather API.

YAML - http://yaml.org/

Rspec - https://github.com/rspec/rspec

JSON - https://www.cheatography.com/mackan90096/cheat-sheets/json/


## Install
Requires the gem rspec, yaml and json.

```
gem install rspec
```
```
gem install yaml
```
```
gem install json
```

When using these gems, you will need to require them in the files that are using them.
```Ruby
require 'rspec'
```
```Ruby
require 'yaml'
```
```Ruby
require 'json'
```

## Run the tests

To run the tests, in the terminal, make sure are in the root folder and then enter the command.
```
rspec
```

This will automatically run the tests that have been defined in this folder.

## How to add tests

In the spec folder, you will see all the files that contain the tests. To make a new file, you will need to make sure that there is spec in the file name (ie 'name_spec.rb'). In the file you will need to require spec_helper and below is a general format of how the tests are made.
```Ruby
require 'spec_helper'

describe Name_of_Application do

  context 'Description of what you are trying to test' do

    it "description of what the test is for" do

    end
  end
end
```

The `it` block is where the majority of test code is written in. you can have as many `it` blocks as you want, where each one runs a different test.


## Additions

Due to the documentation in the OpenWeather API, there will be some tests that fail. However, that is not due to the tests but the lack of information on what value types may come up in the specific keys. With further testing, all the values may eventually be found. But this will be difficult as exhaustive testing is near impossible.
