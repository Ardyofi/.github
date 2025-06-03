# Makefile for Python project

# Variables
PYTHON := python3
PIP := pip3

# Default task
.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo "  install     Install dependencies"
	@echo "  format      Format code using black"
	@echo "  lint        Lint code using flake8"
	@echo "  test        Run tests using pytest"
	@echo "  run         Run the application"

.PHONY: install
install:
	$(PIP) install -r requirements.txt

.PHONY: format
format:
	$(PYTHON) -m black .

.PHONY: lint
lint:
	$(PYTHON) -m flake8 .

.PHONY: test
test:
	$(PYTHON) -m pytest tests/

.PHONY: run
run:
	$(PYTHON) main.py
