from fastapi import FastAPI
from pydantic import BaseModel
import os
import google.generativeai as genai

# Configure GenAI
genai.configure(api_key=os.getenv("GOOGLE_API_KEY"))

app = FastAPI(title="GenAI Backend")

class RequestBody(BaseModel):
    prompt: str

@app.post("/generate-text")
async def generate_text(req: RequestBody):
    response = genai.generate_text(
        model="models/gemini-2.5-flash",
        prompt=req.prompt,
        temperature=0.7,
        max_output_tokens=256
    )
    return {"output": response.output_text}

