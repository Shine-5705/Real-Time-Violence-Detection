from fastapi import Depends, FastAPI, UploadFile
from ..functions.monitor_video_file import monitor_video_file
import os
app = FastAPI()


@app.get("/")
async def read_root():
    return {
        "message": "Welcome to the Safegaurd-AI API!"
    }

@app.post("/upload")
async def upload_file(file: UploadFile):
    print(file.filename)
    contents = await file.read()
    with open(f"uploads/${file.filename}", "wb") as f:
        f.write(contents)
        monitor_video_file(f"uploads/${file.filename}", "model")
        print("File saved")
    os.remove(f"uploads/${file.filename}")
    return {
        "message": "File uploaded successfully"
    }