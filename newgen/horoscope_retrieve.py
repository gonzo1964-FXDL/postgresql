import json

# Retrieve JSON data from the file
with open("horoscope_data.json", "r") as file:
    data = json.load(file)

# Access and process the retrieved JSON data
date = data["data"]["date"]
horoscope_data = data["data"]["horoscope_data"]

# Print the retrieved data
print(f"Horoscope for date {date}: {horoscope_data}")
