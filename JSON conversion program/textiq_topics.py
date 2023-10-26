## Program to convert Excel document to appropriately formatted JSON for use with Qualtrics
## Anna Harvey

import csv
import json

# Establish variables with paths to files. Files must be in the same folder for this code to work without modification.
# Main topic dictionary file
topics_csv_file = 'TIQ_dict_topics.csv'
# JSON file that will be written
json_file = 'TIQ_Topics.json'
 
# Read the topics CSV file
with open(topics_csv_file, newline="", encoding="utf-8") as f_topics:
    reader = csv.DictReader(f_topics)
    rows_topics = list(reader)
    
# Read each row in the topics file and construct a dictionary 
topics = []
for row in rows_topics:
    obj = {
        "operation": row["operation"],
        "topic": {
            "label": row["label"],
            "query": row["query"],
        },
    }

    topics.append(obj)
    topics_string = json.dumps(topics, indent=4)

# Combine the topics data and necessary formatting
json_data = {
    "version": "1.0",
    "operations": topics
}

# Convert the data to a JSON string with proper formatting
json_string = json.dumps(json_data, indent=4, ensure_ascii=False)

# Write the JSON string to the file
with open(json_file, 'w', encoding='utf-8') as f_json:
    f_json.write(json_string)