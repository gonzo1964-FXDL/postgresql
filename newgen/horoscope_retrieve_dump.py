import json

# Retrieve JSON data from the file
with open("horoscope_data.json", "r") as file:
    data = json.load(file)

# Format the data
formatted_data = json.dumps(data, indent=2)

print(formatted_data)
