from base.content_formatter import error_content, payload_content
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util import article

router = APIRouter(
    tags=['article'],
    default_response_class=JSONResponse
)

@router.get("/article/{article_id}", summary="Get an Article")
async def get_article(article_id: int):
    article_ = await article.get(article_id=article_id)
    if article_ is None:
        return JSONResponse(status_code=404, content=error_content(message="ArticleNotFound")) 
    
    return JSONResponse(status_code=200, content=payload_content(payload=article_))


@router.get("/article", summary="Browse Articles")
async def browse_article():
    articles = await article.browse()
    if articles is None:
        return JSONResponse(status_code=404, content=error_content(message="ArticleNotFound")) 
    
    return JSONResponse(status_code=200, content=payload_content(payload=articles))