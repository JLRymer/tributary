FROM python:3.11
COPY ./requirements.txt .
COPY ./entrypoint.py .
CMD exec gunicorn entrypoint:app
RUN pip install -r requirements.txt