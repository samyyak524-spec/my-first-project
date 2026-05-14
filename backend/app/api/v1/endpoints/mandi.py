from fastapi import APIRouter

router = APIRouter()

@router.get('/prices')
def prices(district: str):
    return {'district': district, 'items': [{'crop': 'Wheat', 'price': 2350}]}
