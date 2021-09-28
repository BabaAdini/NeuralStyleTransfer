FROM continuumio/anaconda3
WORKDIR /DOCKY
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./app ./app
EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]