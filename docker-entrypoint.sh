#!/usr/bin/env bash
python3 -m coverage run -m pytest tests
python3 -m coverage lcov -o coverage/lcov.info