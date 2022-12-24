from base.content_formatter import payload_content, error_content
from datetime import datetime
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util import account, dietitian, session

router = APIRouter(
    tags=['session'],
    default_response_class=JSONResponse
)

@router.post("/session")
async def add_session(user_id: int, dietitian_id: int, domain_id: int, start_time: datetime, end_time: datetime):
    user = await account.get(user_id) 
    if user is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    sessions = await session.get_sessions(account_id=user_id)
    for session_ in sessions:
        if session_.start_time == start_time or session_.end_time == end_time:
            return JSONResponse(status_code=404, content=error_content(message="UserTimeAleardyReserved"))

    dietitian_ = await dietitian.get(dietitian_id)
    if dietitian_ is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))
    
    dietitian_domains = await dietitian.get_domain(dietitian_id)
    dietitian_domain_ids = [dietitian_domain.id for dietitian_domain in dietitian_domains]
    if domain_id not in dietitian_domain_ids:
       return JSONResponse(status_code=404, content=error_content(message="DomainNotInDietitianDomain")) 

    return_session = await session.add(user_id=user_id, dietitian_id=dietitian_id, domain_id=domain_id,
                                       start_time=start_time, end_time=end_time)
    
    return JSONResponse(status_code=200, content=payload_content(payload=return_session))
    
    