:: Create a virtual environment (optional but recommended)
python -m venv venv
call venv\Scripts\activate

:: Install dependencies
pip install -r requirements.txt

:: Run the Python script
start /B python app.py
