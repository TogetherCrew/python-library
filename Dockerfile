FROM python:3.10-bullseye AS base
WORKDIR /project
COPY . .
RUN pip install .

FROM base as test
RUN python3 -m coverage run -m pytest tests
CMD ["python3", "-m", "coverage", "lcov" ,"-o", "coverage/lcov.info"]
