import json

# Retrieve JSON data from the file
with open("horoscope_data.json", "r") as file:
    data = json.load(file)

print(data)
