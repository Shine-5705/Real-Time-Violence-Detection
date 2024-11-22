from fastapi import Depends, FastAPI, UploadFile
app = FastAPI()

from ..functions.twilio import send_emergency_sms, make_emergency_call



@app.get("/")
async def read_root():
    return {
        "message": "Welcome to the Safegaurd-AI API!"
    }

@app.post("/upload")
async def upload_file(file:UploadFile):
    print(file.filename)
    print(file.file.read())
    return {"filename": file.file}