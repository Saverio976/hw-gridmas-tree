PYTHON	?=	python3

.venv:
	$(PYTHON) -m venv .venv

.venv/lib: .venv requirements.txt
	. .venv/bin/activate && \
		python -m pip install -r ./requirements.txt

run:
	. .venv/bin/activate && \
		cd backend && python main.py
