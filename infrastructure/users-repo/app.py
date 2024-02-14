#!/usr/bin/python3
# Author: Madhu Akula
# This program has been created as part of Kubernetes Goat
# User repositories information using API
import json
import os
import sys

import requests


def get_repo_details(user_name):
    # This need to be added in environment variables
    API_KEY = os.environ["API_KEY"]
    headers = {"secret-api-key": API_KEY}
    r = requests.get(
        "https://api.github.com/users/" + user_name + "/repos", headers=headers
    )
    return print(json.dumps(r.json(), indent=2))


def main():
    print("Welcome to users repo information")
    if len(sys.argv) != 2:
        print("Usage: python main.py madhuakula")
        sys.exit(1)
    user_name = sys.argv[1]
    get_repo_details(user_name)


if __name__ == "__main__":
    main()
