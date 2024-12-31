FROM python:3.10-slim


COPY . /src

WORKDIR /src


RUN pip install -r requirements.txt

ENV SECRET_KEY=123
ENV STRIPE_TEST_PUBLIC_KEY=123
ENV STRIPE_TEST_SECRET_KEY=123

RUN python manage.py migrate

EXPOSE 8000


CMD ["python","manage.py","runserver","0.0.0.0:8000"]