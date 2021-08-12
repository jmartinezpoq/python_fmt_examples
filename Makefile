py_files = $(wildcard *.py) 

env_ok: requirements.txt
	rm -rf env env_ok
	python3 -m venv env
	env/bin/pip install -r requirements.txt
	touch env_ok

.PHONY: fmt
fmt: env_ok
	env/bin/isort --sp .isort.cfg $(py_files)
	env/bin/black $(py_files)

.PHONY: check
check: env_ok
	env/bin/isort  --sp .isort.cfg $(py_files) --check
	env/bin/black --check $(py_files)

.PHONY
clean:
	rm -rf env_ok env