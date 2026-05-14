from openai import OpenAI
from app.core.config import settings

client = OpenAI(api_key=settings.openai_api_key)

def chat_hinglish(message: str, language: str) -> str:
    prompt = f"You are an Indian agriculture advisor. Reply in {language}. User: {message}"
    try:
      response = client.responses.create(model='gpt-4.1-mini', input=prompt)
      return response.output_text
    except Exception:
      return 'Namaste! Network issue hai, kripya dobara koshish karein.'
