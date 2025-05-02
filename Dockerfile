FROM python:3.8-alpine
WORKDIR /app
COPY . .
ENV FLASK_APP=app1.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "flask", "run" ]
