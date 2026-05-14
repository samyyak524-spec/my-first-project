from fastapi import APIRouter

router = APIRouter()

@router.get('')
def list_schemes(state: str = 'Maharashtra'):
    return {'state': state, 'schemes': ['PM-KISAN', 'KCC Loan', 'Tractor Subsidy', 'Solar Pump Subsidy']}
