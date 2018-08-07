# a simple for docker 
FROM python:2.7

ADD try1.py /

RUN pip install requests

CMD [ "python", "./try1.py" ]
