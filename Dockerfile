FROM python:3.8

WORKDIR /code

ENV PYTHONPATH=/code/

COPY requirements.txt requirements.txt

# RUN python -m venv env
# RUN source env/bin/activate
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "src/main.py" ]