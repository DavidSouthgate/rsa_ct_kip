dist/*:
	python3 setup.py sdist bdist_wheel

check:
	twine check dist/*

upload-test:
	twine upload --repository testpypi dist/*

upload-prod:
	twine upload dist/*

clean:
	rm -rf dist
	rm -rf rsa_ct_kip.egg-info
