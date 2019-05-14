#######
# Tests
#######
test:
	coverage run --source=marshmallow_dumped_order setup.py test

upload:
	if [ -d dist ]; then rm -Rf dist; fi
	python setup.py sdist
	twine upload dist/*
