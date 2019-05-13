#######
# Tests
#######
test:
	python -m coverage run setup.py test

upload:
	rm dist/*
	python setup.py sdist
	twine upload dist/*
