FROM python:3.10-slim


COPY . /

RUN pip install -r requirements.txt

ENV SECRET_KEY=123
ENV STRIPE_TEST_PUBLIC_KEY=123
ENV STRIPE_TEST_SECRET_KEY=123

ENTRYPOINT ["python","manage.py","migrate","djecommerce"]


EXPOSE 8000


CMD ["python","manage.py","runserver","0.0.0.0:8000"]