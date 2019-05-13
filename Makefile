#######
# Tests
#######
test:
	coverage run --source=marshmallow_dumped_order setup.py test

upload:
	rm dist/*
	python setup.py sdist
	twine upload dist/*
