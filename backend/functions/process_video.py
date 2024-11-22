import cv2
import numpy as np
def process_video_feed(frame, model, frames_buffer, segment_frames=42):
  """Process video frame and make prediction with enhanced debugging"""
  try:
      resized_frame = cv2.resize(frame, (128, 128))
      frames_buffer.append(resized_frame)
      
      if len(frames_buffer) > segment_frames:
          frames_buffer.pop(0)
      
      if len(frames_buffer) == segment_frames:
          video_segment = np.array(frames_buffer)
          video_segment = video_segment.astype('float32') / 255.0
          video_segment = np.expand_dims(video_segment, axis=0)
          
          prediction = model.predict(video_segment, verbose=0)
          
          # Get probabilities for both classes
          no_fight_prob = prediction[0][0]
          fight_prob = prediction[0][1]
          
          # Use fight probability for confidence
          predicted_class = 1 if fight_prob > 0.4 else 0
          confidence = fight_prob
          
          print(f"\nPrediction Analysis:")
          print(f"No Fight Probability: {no_fight_prob:.2%}")
          print(f"Fight Probability: {fight_prob:.2%}")
          print(f"Predicted class: {'Fight' if predicted_class == 1 else 'No Fight'}")
          print(f"Confidence: {confidence:.2%}")
          
          return predicted_class, confidence
      else:
          print(f"\rCollecting frames: {len(frames_buffer)}/{segment_frames}", end="")
      
      return None, 0.0
      
  except Exception as e:
      print(f"Error in process_video_feed: {str(e)}")
      return None, 0.0