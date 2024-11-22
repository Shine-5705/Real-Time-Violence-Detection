from .settings import get_settings
from twilio.rest import Client
from datetime import datetime
def send_emergency_alert(emergency_number ,detection_type="webcam", location="Unknown"):
  """Send both SMS and voice call for emergency alert"""
  try:
      settings = get_settings()
      client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
      
      # Send SMS
      message_text = (f"⚠️ EMERGENCY ALERT! Fight detected via {detection_type} "
                     f"at {datetime.now().strftime('%Y-%m-%d %H:%M:%S')} "
                     f"Location: {location}")
      
      message = client.messages.create(
          body=message_text,
          from_=settings.TWILIO_PHONE_NUMBER,
          to=emergency_number
      )
      print(f"Emergency SMS sent successfully - SID: {message.sid}")
      # Make voice call
      call = client.calls.create(
          twiml=f'<Response><Say>Emergency! Fight detected via {detection_type}. '
                f'Please check the location immediately.</Say></Response>',
          from_=settings.TWILIO_PHONE_NUMBER,
          to=emergency_number
      )
      print(f"Emergency call initiated successfully - SID: {call.sid}")      
      return True
      
  except Exception as e:
      print(f"Emergency alert failed: {str(e)}")
      return False

def verify_twilio_credentials():
  """Verify Twilio credentials are working"""
  settings = get_settings()
  try:
      client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
      client.api.accounts(settings.TWILIO_ACCOUNT_SID).fetch()
      return True
  except Exception as e:
      print(f"Twilio credentials verification failed: {str(e)}")
      return False