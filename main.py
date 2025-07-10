# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "FastAPI is running 🚀 in dev mode with latest code ready to main now without restart app services final go !!!!"}
