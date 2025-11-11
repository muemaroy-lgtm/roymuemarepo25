import from byllm { Model }

# Initialize the AI model (use Model.Model to call the class)
glob llm = Model.Model(model_name="gemini/gemini-2.0-flash");

# Define a simple personality enum
enum Personality {
    INTROVERT,
    EXTROVERT,
    AMBIVERT
}

# Function that uses AI to determine personality
def get_personality(name: str) -> Personality by llm();

# Entry point
with entry {
    name = "Albert Einstein";
    result = get_personality(name);
    print(f"{result} personality detected for {name}");
}
