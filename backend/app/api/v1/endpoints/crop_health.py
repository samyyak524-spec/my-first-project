from fastapi import APIRouter, UploadFile, File
from app.services.ml.disease_service import detect_disease

router = APIRouter()

@router.post('/detect')
async def detect(image: UploadFile = File(...)):
    return detect_disease(await image.read())
