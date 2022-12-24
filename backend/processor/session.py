from base.content_formatter import payload_content, error_content
from base.do import Session
from database import database
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util.account import get_account
from util.dietitian import get_dietitian, get_dietitian_name
from util.domain import get_domain_name

router = APIRouter(
    tags=['session'],
    default_response_class=JSONResponse
)

@router.post("/session", tags=["session"])
async def add_session(user_id, dietitian_id, domain_id, start_time, end_time):
    user = await get_account(user_id) 
    if user is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    dietitian = await get_dietitian(dietitian_id)
    if dietitian is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))
    
    database.cur.execute(f"INSERT INTO session (user_id, dietitian_id, domain_id, session_status, link, start_time, end_time) \
                           VALUES ('{user_id}', '{dietitian_id}', '{domain_id}', 'RESERVED', 'https://meet.google.com/vhf-ujur-jgu', \
                                   '{start_time}', '{end_time}') RETURNING id")
    id, = database.cur.fetchone()
    database.conn.commit()

    database.cur.execute(f"SELECT id, user_id, dietitian_id, domain_id, session_status, link, start_time, end_time FROM session where id = {id}")
    row = database.cur.fetchone()

    dietitian_name = await get_dietitian_name(dietitian_id=row[2])
    domain_name = await get_domain_name(domain_id=row[3])

    payload = Session(id=row[0], user_id=row[1], dietitian_id=row[2], dietitian_name=dietitian_name,
                      domain_id=row[3], domain_name=domain_name,
                      session_status=row[4], link=row[5], start_time=row[6], end_time=row[7])

    return JSONResponse(status_code=200, content=payload_content(payload=payload))
    
    