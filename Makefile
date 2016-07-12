ENTER_VENV := . venv/bin/activate
VENV_BIN := venv/bin/activate

$(VENV_BIN):
	virtualenv venv --distribute

init.pip: $(VENV_BIN)
	$(ENTER_VENV); curl -O http://python-distribute.org/distribute_setup.py
	$(ENTER_VENV); python distribute_setup.py
	$(ENTER_VENV); easy_install pip
	$(ENTER_VENV); pip install -r requirements.txt

init: $(VENV_BIN);
	$(ENTER_VENV); pip install -r requirements.txt

