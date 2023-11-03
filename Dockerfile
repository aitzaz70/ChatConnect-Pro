build:
  - name: Build Go Component
    image: golang:1.17
    commands:
      - go build -o server

  - name: Build Python Component
    image: python:3.9
    commands:
      - pip install -r requirements.txt

deploy:
  - name: Deploy Project
    image: python:3.9
    commands:
      - python main.py
