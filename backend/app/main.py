from fastapi import Depends, FastAPI, UploadFile
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
    with open(file.filename, "wb") as f:
        f.write(contents)
    return {"filename": file.filename}