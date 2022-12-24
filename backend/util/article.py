from database import database
from base.do import Article
from typing import Sequence
from util import advertiser

async def get(article_id) -> Article:
    database.cur.execute(f"SELECT id, advertiser_id, post_time, title, context FROM article where id = {article_id}")
    row = database.cur.fetchone()
    if row is None:
        return None

    advertiser_ = await advertiser.get(article_id=row[0])
    article = Article(id=row[0], advertiser=advertiser_, post_time=row[2], title=row[3], context=row[4])
    return article

async def browse() -> Sequence[Article]:
    database.cur.execute(f"SELECT id, advertiser_id, post_time, title, context FROM article")
    rows = database.cur.fetchall()
    if rows is None:
        return None

    articles = []
    for row in rows:
        advertiser_ = await advertiser.get(article_id=row[0])
        articles.append(Article(id=row[0], advertiser=advertiser_, post_time=row[2], title=row[3], context=row[4]))
    return articles