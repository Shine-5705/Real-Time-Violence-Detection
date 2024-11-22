import cv2
from tensorflow import keras
import time
from .metric import recall_m, precision_m, f1_m
from .process_video import process_video_feed
from .twilio import send_emergency_alert
def monitor_video_file(video_path, model_path, confidence_threshold=0.4):
  """Process a video file for fight detection"""
  print(f"Processing video file: {video_path}")
  
  try:
      model = keras.models.load_model(model_path, 
                                  custom_objects={'recall_m': recall_m, 
                                                'precision_m': precision_m, 
                                                'f1_m': f1_m})
      print("Model loaded successfully")
  except Exception as e:
      print(f"Error loading model: {str(e)}")
      return
  
  
  cap = cv2.VideoCapture(video_path)
  if not cap.isOpened():
      print("Error: Could not open video file")
      return
  
  frames_buffer = []
  last_alert_time = 0
  
  try:
      while cap.isOpened():
          ret, frame = cap.read()
          if not ret:
              break
          
          pred_class, confidence = process_video_feed(frame, model, frames_buffer)
          
          if pred_class is not None and pred_class == 1 and confidence >= confidence_threshold:
              current_time = time.time()
              if current_time - last_alert_time >= 60:
                  print(f"\n⚠️ Fight detected at {cap.get(cv2.CAP_PROP_POS_MSEC)/1000:.2f} seconds")
                  print(f"Confidence: {confidence:.2%}")
                  send_emergency_alert("+918433135192","video")
                  last_alert_time = current_time
          
          cv2.imshow('Video Processing', frame)
          if cv2.waitKey(1) & 0xFF == ord('q'):
              break
              
  finally:
      cap.release()
      cv2.destroyAllWindows()