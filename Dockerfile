FROM python:3.11

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
#RUN pip install -r requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt


EXPOSE 8501

CMD ["streamlit", "run", "app.py"]
