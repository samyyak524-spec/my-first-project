from fastapi import APIRouter, UploadFile, File
from app.services.ml.soil_service import analyze_soil

router = APIRouter()

@router.post('/analyze')
async def soil_analyze(image: UploadFile = File(...)):
    payload = await image.read()
    return analyze_soil(payload)
