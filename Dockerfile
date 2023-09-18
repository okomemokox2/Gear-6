FROM python:3.10
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code
RUN pip install -r requirements.txt
COPY . /code/
# Pythonのバイトコードを書き込まない設定
ENV PYTHONDONTWRITEBYTECODE 1
# Pythonの出力をバッファリングせずに表示する設定
ENV PYTHONUNBUFFERED 1