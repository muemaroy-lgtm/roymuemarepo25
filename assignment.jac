with entry {
    name = "Albert Einstein";
    bio = "A physicist known for his deep thinking, problem-solving, and reserved personality traits.";

    # Call functions
    result = get_personality(name);
    report = generate_case_report(name, bio);

    # Output results
    print(f"{result} personality detected for {name}");
    print("=== Case Report ===");
    print(report);
}
def generate_case_report(name: str, context: str) -> str by llm();
def generate_case_report(name: str, context: str) -> str by llm("""
You are a criminology assistant. Given the subject's name and context, 
generate a short structured report:
1. A 3-sentence summary of their behavior/personality.
2. 3 suggested interview questions.
3. One risk or caution note.
""");
