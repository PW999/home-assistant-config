# Home Assistant packages v2

This is my 3rd attempt at organizing my automations in Home Assistant.
The first attempt was to put everything in automations.yaml and scenes.yaml, the second attempt was placing it all in packages and this third attempt I will still use packages but I will combine them with Ruby templates for boilerplate stuff.

## Generating the YAML from erb
To generate the YAML file and run it through yamllint first, run the following command
```
erb humidity/bedroom.erb | yamllint -
```

To just write the yaml file
```
erb humidity/bedroom.erb > humidity/bedroom.yaml
```
