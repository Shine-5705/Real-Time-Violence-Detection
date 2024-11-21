from functools import lru_cache
from typing import Annotated, Union

from fastapi import Depends, FastAPI
from ..config import Settings
app = FastAPI()

from ..functions.twilio_methods import send_emergency_sms



@app.get("/")
async def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
async def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}

@app.get("/twilio")
async def read_twilio_settings():
    response = send_emergency_sms("+918475864044")
    return {"Twilio Credentials Verified": response}