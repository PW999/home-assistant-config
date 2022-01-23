# Home Assistant packages v2

This is my 3rd attempt at organizing my automations in Home Assistant:
* Attempt 1: put everything in automations.yaml and scenes.yaml
* Attempt 2: package structure based on area and 5 boolean inputs to hold the 'state' of the house
* Attempt 3: package structure based on functionality and master switch + dropdown for the state of the house

I used the 2nd attempt for about a year, but the 5 boolean inputs made it very difficult to manage the configuration. I had to think of 32 possible combinations and not all of the inputs had clear names. To make things worse, some inputs would also change the state of other inputs.

The last and current attempt has replaced most boolean inputs by a single [select dropdown](general/mode.yaml). In v3 I also introduced the usage of Ruby templates to generate certain automations (e.g. in [appliance](./appliance/template))

## Generating the YAML from erb
The script [erb_all.sh](./erb_all.sh) will generate all YAML files by finding all erb files in the current directory and sub-directories.
Every generated yaml file is first validated using yamllint before the file is actuallly written to disk.
