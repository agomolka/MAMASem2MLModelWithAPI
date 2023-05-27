FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY app.py /app/app.py
COPY model.pkl /app/model.pkl

EXPOSE 5000

CMD ["python", "app.py"]
