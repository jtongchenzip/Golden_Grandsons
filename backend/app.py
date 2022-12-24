import uvicorn
from fastapi import FastAPI
from fastapi.responses import JSONResponse
from database import database
from base.do import UserAccount, DietitianAccount, Session, Article
from base.content_formatter import * 
from util.advertiser import *
from util.dietitian import *
from util.domain import *

tags_metadata = [
    { "name": "account", },
    { "name": "dietitian", },
    { "name": "session", },
    { "name": "article", },
]

app = FastAPI(openapi_tags=tags_metadata)

@app.get("/account/{account_id}", tags=["account"], summary="Get one User Account")
async def get_account(account_id: int):
    database.cur.execute(f"SELECT id, name, gender, birthday FROM user_account where id = {account_id}")
    row = database.cur.fetchone()

    if row is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    data = UserAccount(id=row[0], name=row[1], gender=row[2], birthday=row[3])
    return JSONResponse(status_code=200, content=data_content(data=data))

@app.get("/dietitian/{dietitian_id}", tags=["dietitian"], summary="Get Dietitian Account")
async def get_dietitian(dietitian_id: int):
    database.cur.execute(f"SELECT id, name, gender, phone_number, introduction, work_unit FROM dietitian_account where id = {dietitian_id}")
    row = database.cur.fetchone()

    if row is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))

    dietitian_id = row[0]
    domains = await get_dietitian_domain(dietitian_id)
    available_times = await get_dietitian_time(dietitian_id)
    data = [DietitianAccount(id=row[0], name=row[1], gender=row[2], domain=domains, available_time=available_times,
                             phone_number=row[3], introduction=row[4], work_unit=row[5])]
    
    return JSONResponse(status_code=200, content=data_content(data=data))

@app.get("/dietitian", tags=["dietitian"], summary="Browse Dietitian Accounts")
async def browse_dietitian(filter: str=None):
    database.cur.execute(f"SELECT id, name, gender, phone_number, introduction, work_unit FROM dietitian_account")
    rows = database.cur.fetchall()

    if rows is None:
        return JSONResponse(status_code=404, content=error_content(message="DietitianAccountNotFound"))

    data = []
    for row in rows:
        dietitian_id = row[0]
        domains = await get_dietitian_domain(dietitian_id)
        available_times = await get_dietitian_time(dietitian_id)
        data.append(DietitianAccount(id=row[0], name=row[1], gender=row[2], domain=domains, available_time=available_times,
                                     phone_number=row[3], introduction=row[4], work_unit=row[5]))
    
    return JSONResponse(status_code=200, content=data_content(data=data))

@app.get("/account/{account_id}/session", tags=["account"], summary="Get a user's session")
async def get_session_under_account(account_id: int):
    database.cur.execute(f"SELECT id, user_id, dietitian_id, domain_id, session_status, link, start_time, end_time FROM session where user_id = {account_id}")
    rows = database.cur.fetchall()

    if rows is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    data = []
    for row in rows:
        dietitian_id = row[2]
        domain_id = row[3]

        dietitian_name = await get_dietitian_name(dietitian_id)
        domain_name = await get_domain_name(domain_id)
    
        data.append(Session(id=row[0], user_id=row[1], dietitian_id=row[2], dietitian_name=dietitian_name,
                            domain_id=row[3], domain_name=domain_name,
                            session_status=row[4], link=row[5], start_time=row[6], end_time=row[7]))

    return JSONResponse(status_code=200, content=data_content(data=data))

@app.post("/session", tags=["session"])
async def add_session(user_id, dietitian_id, domain_id, start_time, end_time):
    database.cur.execute(f"INSERT INTO session (user_id, dietitian_id, domain_id, session_status, link, start_time, end_time) \
                           VALUES ('{user_id}', '{dietitian_id}', '{domain_id}', 'RESERVED', 'https://meet.google.com/vhf-ujur-jgu', \
                                   '{start_time}', '{end_time}') RETURNING id")
    id, = database.cur.fetchone()
    database.conn.commit()

    database.cur.execute(f"SELECT id, user_id, dietitian_id, domain_id, session_status, link, start_time, end_time FROM session where id = {id}")
    row = database.cur.fetchone()

    dietitian_id = row[2]
    domain_id = row[3]

    dietitian_name = await get_dietitian_name(dietitian_id)
    domain_name = await get_domain_name(domain_id)

    return Session(id=row[0], user_id=row[1], dietitian_id=row[2], dietitian_name=dietitian_name,
                   domain_id=row[3], domain_name=domain_name,
                   session_status=row[4], link=row[5], start_time=row[6], end_time=row[7])

@app.get("/article/{article_id}", tags=["article"], summary="Get an Article")
async def get_article(article_id: int):
    database.cur.execute(f"SELECT id, advertiser_id, post_time, title, context FROM article where id = {article_id}")
    row = database.cur.fetchone()

    if row is None:
        return JSONResponse(status_code=404, content=error_content(message="ArticleNotFound"))

    article_id = row[0]
    advertiser = await get_article_advertiser(article_id)
    data = Article(id=article_id, advertiser=advertiser, post_time=row[2], title=row[3], context=row[4])
    
    return JSONResponse(status_code=200, content=data_content(data=data))


@app.get("/article", tags=["article"], summary="Browse Articles")
async def browse_article(filter: str=None):
    database.cur.execute(f"SELECT id, advertiser_id, post_time, title, context FROM article")
    rows = database.cur.fetchall()

    if rows is None:
        return JSONResponse(status_code=404, content=error_content(message="ArticleNotFound"))

    data = []
    for row in rows:
        article_id = row[0]
        advertiser = await get_article_advertiser(article_id)
        data.append(Article(id=article_id, advertiser=advertiser, post_time=row[2], title=row[3], context=row[4]))
    
    return JSONResponse(status_code=200, content=data_content(data=data))

if __name__ == "__main__":
    uvicorn.run(app, host="localhost", port=8000)