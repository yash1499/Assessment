import json
import csv
import sys

def json_to_csv(json_file, csv_file):
    with open(json_file, 'r') as jf:
        data = json.load(jf)

    with open(csv_file, 'w', newline='') as cf:
        writer = csv.writer(cf)
        for key, value in data.items():
            writer.writerow([key, value])

if _name_ == "_main_":
    if len(sys.argv) != 3:
        print("Usage: python process_json.py <input_json> <output_csv>")
        sys.exit(1)
    json_to_csv(sys.argv[1], sys.argv[2])
