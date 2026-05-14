from fastapi import APIRouter
from app.services.weather.weather_service import get_weather

router = APIRouter()

@router.get('/forecast')
def forecast(lat: float, lon: float):
    return get_weather(lat, lon)
