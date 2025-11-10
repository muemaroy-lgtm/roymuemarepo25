import google.generativeai as genai

# Configure the API key (it’s already set in the terminal)
genai.configure(api_key=None)

def run_reader(input_url: str):
    print("🚀 Repo Reader Agent Activated!")
    print("Reading repository structure...")

    # Create the Gemini model
    model = genai.GenerativeModel("gemini-1.5-flash")

    # Build the prompt
    prompt = f"Summarize the structure and purpose of this public GitHub repository: {input_url}"

    # Generate response
    response = model.generate_content(prompt)

    print("\n📘 Repository Summary:\n")
    print(response.text)

# Run the function
if __name__ == "__main__":
    run_reader("https://github.com/psf/requests.git")

