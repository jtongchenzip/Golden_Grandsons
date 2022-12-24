from base.content_formatter import data_content, error_content 
from base.do import UserAccount, Session
from database import database
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util.dietitian import get_dietitian_name
from util.domain import get_domain_name

router = APIRouter(
    tags=['account'],
    default_response_class=JSONResponse
)

@router.get("/account/{account_id}", tags=["account"], summary="Get one User Account")
async def get_account(account_id: int):
    database.cur.execute(f"SELECT id, name, gender, birthday FROM user_account where id = {account_id}")
    row = database.cur.fetchone()

    if row is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    data = UserAccount(id=row[0], name=row[1], gender=row[2], birthday=row[3])
    return JSONResponse(status_code=200, content=data_content(data=data))

@router.get("/account/{account_id}/session", tags=["account"], summary="Get a user's session")
async def get_session_under_account(account_id: int):
    database.cur.execute(f"SELECT id, user_id, dietitian_id, domain_id, session_status, link, start_time, end_time FROM session where user_id = {account_id}")
    rows = database.cur.fetchall()

    if rows is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    data = []
    for row in rows:
        dietitian_name = await get_dietitian_name(dietitian_id=row[2])
        domain_name = await get_domain_name(domain_id=row[3])
    
        data.append(Session(id=row[0], user_id=row[1], dietitian_id=row[2], dietitian_name=dietitian_name,
                            domain_id=row[3], domain_name=domain_name,
                            session_status=row[4], link=row[5], start_time=row[6], end_time=row[7]))

    return JSONResponse(status_code=200, content=data_content(data=data))