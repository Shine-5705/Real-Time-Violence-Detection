from .settings import get_settings
from twilio.rest import Client

def send_emergency_sms(emergency_number,source_type="webcam"):
  """Send an emergency SMS using Twilio with enhanced error handling"""
  settings = get_settings()
  try:
      # First verify credentials
      if not verify_twilio_credentials():
          print("Skipping SMS send due to invalid credentials")
          return False

      # Initialize Twilio client
      client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
      
      # Prepare message
      message_body = f"⚠️ ALERT: Fight detected in {source_type} footage! Please check immediately."
      
      # Send message with detailed error handling
      try:
          message = client.messages.create(
              body=message_body,
              from_=settings.TWILIO_PHONE_NUMBER,
              to=emergency_number
          )
          print(f"Emergency SMS sent successfully - SID: {message.sid}")
          return True
          
      except Exception as msg_error:
          if 'unauthorized' in str(msg_error).lower():
              print("Error: Unauthorized. Please check your Twilio credentials.")
          elif 'not a valid phone number' in str(msg_error).lower():
              print(f"Error: Invalid phone number format: {emergency_number}")
          elif 'not a valid twilio phone number' in str(msg_error).lower():
              print(f"Error: Invalid Twilio phone number: {emergency_number}")
          else:
              print(f"SMS sending failed: {str(msg_error)}")
          return False
          
  except Exception as e:
      print(f"Failed to initialize Twilio client: {str(e)}")
      return False

def verify_twilio_credentials():
  """Verify Twilio credentials are working"""
  settings = get_settings()
  try:
      client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
      # Try to access account info to verify credentials
      account = client.api.accounts(settings.TWILIO_ACCOUNT_SID).fetch()
      print("Twilio credentials verified successfully")
      return True
  except Exception as e:
      print(f"Twilio credential verification failed: {str(e)}")
      return False
  
def make_emergency_call(emergency_number):
  """Make an emergency call using Twilio with enhanced error handling"""
  settings = get_settings()
  try:
      # First verify credentials
      if not verify_twilio_credentials():
          print("Skipping call due to invalid credentials")
          return False

      # Initialize Twilio client
      client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
      
      try:
          call = client.calls.create(
              url='http://demo.twilio.com/docs/voice.xml',
              to=emergency_number,
              from_=settings.TWILIO_PHONE_NUMBER
          )
          print(f"Emergency call initiated successfully - SID: {call.sid}")
          return True
          
      except Exception as call_error:
          if 'unauthorized' in str(call_error).lower():
              print("Error: Unauthorized. Please check your Twilio credentials.")
          elif 'not a valid phone number' in str(call_error).lower():
              print(f"Error: Invalid phone number format: {emergency_number}")
          elif 'not a valid twilio phone number' in str(call_error).lower():
              print(f"Error: Invalid Twilio phone number: {settings.TWILIO_PHONE_NUMBER}")
          else:
              print(f"Call initiation failed: {str(call_error)}")
          return False
          
  except Exception as e:
      print(f"Failed to initialize Twilio client: {str(e)}")
      return False