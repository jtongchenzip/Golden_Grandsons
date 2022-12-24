from base.content_formatter import error_content, payload_content
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util import dietitian

router = APIRouter(
    tags=['dietitian'],
    default_response_class=JSONResponse
)

@router.get("/dietitian/{dietitian_id}", summary="Get Dietitian Account")
async def get_dietitian(dietitian_id: int):
    dietitian_ = await dietitian.get(dietitian_id=dietitian_id)
    if dietitian_ is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))
    
    return JSONResponse(status_code=200, content=payload_content(payload=dietitian_))

@router.get("/dietitian", summary="Browse Dietitian Accounts")
async def browse_dietitian():
    dietitians = await dietitian.browse()
    if dietitians is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))
    
    return JSONResponse(status_code=200, content=payload_content(payload=dietitians))