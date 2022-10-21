from re import A
import sys
from datetime import datetime
from datetime import date
import os
import time
from dotenv import load_dotenv


def test_exe():
    a = 1
    b = a
    print(id(a) == id(b))

def test_env():
    load_dotenv(dotenv_path='./.env')
    environment = os.environ.get('ENVIRONMENT')
    project = os.environ.get('PROJECT')
    print("We are working in environment: ", environment, " and project is : ", project)

    


if __name__ == '__main__':
    print("dbt process started")
    test_exe()
    test_env()
