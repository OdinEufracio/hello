setup:
	python3 -m venv ~/.hello
 
install:
	pip install --upgrade pip setuptools &&\
		pip install -r requirements.txt
 
test:
	# python -m pytest -vv --cov=myrepolib tests/*.py
	# python -m pytest --nbval notebook.ipynb
 
 
lint:
	pylint --disable=R,C hello.py
 
all: install lint test