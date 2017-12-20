# Sparta-Openweathe-API-Test - Integration Testing

## About Repository

I was given a live API to test. The API that I used was the OpenWeather API. This exercise was to help me develop my knowledge and skills of consuming an API and testing the information returned. I made the tests dynamic as well to attempt to prevent the Pesticide Paradox from occurring, so there is a YAML file and a JSON file with a number of city ids or information. This was used to randomly select one of these to test.

## Documentation

See https://openweathermap.org/api for more information on the OpenWeather API.

## Install
Requires the gem rspec, yaml and json.

```Ruby
gem install rspec
```
```Ruby
gem install yaml
```
```Ruby
gem install json
```
## Additions

Due to the documentation in the OpenWeather API, there will be some tests that fail. However, that is not due to the tests but the lack of information on what value types may come up in the specific keys. With further testing, all the values may eventually be found. But this will be difficult as exhaustive testing is near impossible.
