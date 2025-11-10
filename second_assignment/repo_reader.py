#!/usr/bin/env python3
"""
repo_reader.py
----------------
Reads a GitHub repository and generates a summary using Google Gemini.
"""

import google.generativeai as genai
import os

# Configure your Google API key
genai.configure(api_key=os.getenv("GOOGLE_API_KEY"))

# Use a working Gemini model from your available list
MODEL_NAME = "models/gemini-pro-latest"

# URL of the repository to summarize
REPO_URL = "https://github.com/psf/requests"

prompt = f"""
Please summarize the purpose, structure, key files, and components of this GitHub repository:
{REPO_URL}
"""

def summarize_repo():
    print(f"Reading repository: {REPO_URL}")
    try:
        # Use get_response() for your version
        response = genai.get_response(
            model=MODEL_NAME,
            prompt=prompt,
            temperature=0.2,
            max_output_tokens=600
        )
        print("\n📘 Repository Summary:\n")
        print(response.output_text)

    except Exception as e:
        print("❌ Error during generation:", e)

if __name__ == "__main__":
    summarize_repo()

