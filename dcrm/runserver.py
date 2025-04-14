from waitress import serve
from dcrm.wsgi import application  # Update this

serve(application, host='127.0.0.1', port=8000)