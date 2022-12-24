from database import database
from base.do import Domain

async def get(domain_id: int) -> Domain:
    database.cur.execute(f"SELECT id, name FROM domain where id={domain_id}")
    row = database.cur.fetchone()
    return Domain(id=row[0], name=row[1])

async def get_name(domain_id: int) -> str:
    database.cur.execute(f"SELECT id, name FROM domain where id={domain_id}")
    row = database.cur.fetchone()
    return row[1]