from base.content_formatter import error_content, payload_content
from base.do import Article
from database import database
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util.advertiser import get_article_advertiser

router = APIRouter(
    tags=['article'],
    default_response_class=JSONResponse
)

@router.get("/article/{article_id}", tags=["article"], summary="Get an Article")
async def get_article(article_id: int):
    database.cur.execute(f"SELECT id, advertiser_id, post_time, title, context FROM article where id = {article_id}")
    row = database.cur.fetchone()

    if row is None:
        return JSONResponse(status_code=404, content=error_content(message="ArticleNotFound"))

    advertiser = await get_article_advertiser(article_id=row[0])
    payload = Article(id=row[0], advertiser=advertiser, post_time=row[2], title=row[3], context=row[4])
    
    return JSONResponse(status_code=200, content=payload_content(payload=payload))


@router.get("/article", tags=["article"], summary="Browse Articles")
async def browse_article(filter: str=None):
    database.cur.execute(f"SELECT id, advertiser_id, post_time, title, context FROM article")
    rows = database.cur.fetchall()

    if rows is None:
        return JSONResponse(status_code=404, content=error_content(message="ArticleNotFound"))

    payload = []
    for row in rows:
        advertiser = await get_article_advertiser(article_id=row[0])
        payload.append(Article(id=row[0], advertiser=advertiser, post_time=row[2], title=row[3], context=row[4]))
    
    return JSONResponse(status_code=200, content=payload_content(payload=payload))