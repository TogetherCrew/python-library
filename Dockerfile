FROM python:3.10-bullseye AS base
WORKDIR /project
COPY . .
RUN pip install .
# COPY docker-entrypoint.sh .

FROM base as test
# RUN chmod +x docker-entrypoint.sh
# CMD ["./docker-entrypoint.sh"]
CMD ["python3", "-m", "coverage", "run", "-m", "pytest", "tests"]
RUN python3 -m coverage lcov -o coverage/lcov.info
