from base.content_formatter import error_content, data_content
from base.do import DietitianAccount
from database import database
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util.dietitian import get_dietitian_domain, get_dietitian_time

router = APIRouter(
    tags=['dietitian'],
    default_response_class=JSONResponse
)

@router.get("/dietitian/{dietitian_id}", tags=["dietitian"], summary="Get Dietitian Account")
async def get_dietitian(dietitian_id: int):
    database.cur.execute(f"SELECT id, name, gender, phone_number, introduction, work_unit FROM dietitian_account where id = {dietitian_id}")
    row = database.cur.fetchone()

    if row is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))

    domains = await get_dietitian_domain(dietitian_id=row[0])
    available_times = await get_dietitian_time(dietitian_id=row[0])
    data = [DietitianAccount(id=row[0], name=row[1], gender=row[2], domain=domains, available_time=available_times,
                             phone_number=row[3], introduction=row[4], work_unit=row[5])]
    
    return JSONResponse(status_code=200, content=data_content(data=data))

@router.get("/dietitian", tags=["dietitian"], summary="Browse Dietitian Accounts")
async def browse_dietitian():
    database.cur.execute(f"SELECT id, name, gender, phone_number, introduction, work_unit FROM dietitian_account")
    rows = database.cur.fetchall()

    if rows is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))

    data = []
    for row in rows:
        domains = await get_dietitian_domain(dietitian_id=row[0])
        available_times = await get_dietitian_time(dietitian_id=row[0])
        data.append(DietitianAccount(id=row[0], name=row[1], gender=row[2], domain=domains, available_time=available_times,
                                     phone_number=row[3], introduction=row[4], work_unit=row[5]))
    
    return JSONResponse(status_code=200, content=data_content(data=data))