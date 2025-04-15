from waitress import serve
import os
from dcrm.wsgi import application  # Update this

port = int(os.environ.get("PORT", 8000))

serve(application, host='0.0.0.0', port=port)