from waitress import serve
from dcrm.wsgi import application  # Update this

serve(application, host='0.0.0.0', port=8000)