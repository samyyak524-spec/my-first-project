from fastapi import APIRouter
from pydantic import BaseModel
from app.services.ai.llm_service import chat_hinglish

router = APIRouter()

class ChatRequest(BaseModel):
    message: str
    language: str = 'hinglish'

@router.post('/chat')
def chat(req: ChatRequest):
    return {'reply': chat_hinglish(req.message, req.language)}
