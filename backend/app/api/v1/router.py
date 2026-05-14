from fastapi import APIRouter
from app.api.v1.endpoints import assistant, soil, crop_health, weather, mandi, schemes

api_router = APIRouter()
api_router.include_router(assistant.router, prefix='/assistant', tags=['assistant'])
api_router.include_router(soil.router, prefix='/soil', tags=['soil'])
api_router.include_router(crop_health.router, prefix='/crop-health', tags=['crop-health'])
api_router.include_router(weather.router, prefix='/weather', tags=['weather'])
api_router.include_router(mandi.router, prefix='/mandi', tags=['mandi'])
api_router.include_router(schemes.router, prefix='/schemes', tags=['schemes'])
