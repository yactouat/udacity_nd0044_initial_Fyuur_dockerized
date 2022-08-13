FROM python:3.9.13

WORKDIR /usr/src/app

COPY ./requirements.txt ./
RUN pip3 install -U pip
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .

ENV FLASK_APP=app.py
# watch app' files
ENV FLASK_DEBUG=True

# running Flask as a module
CMD ["sh", "-c", "sleep 5 \ 
    && python -m flask run --host=0.0.0.0"]