FROM python:3.11
COPY ./ .

RUN apt-get update && apt-get install -y cmake
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -r ./requirements.txt

CMD ["python", "./filter.py"]