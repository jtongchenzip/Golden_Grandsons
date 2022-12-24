from database import database
from base.do import UserAccount

async def get(user_account_id: int) -> UserAccount:
    database.cur.execute(f"SELECT id, name, gender, birthday FROM user_account where id = {user_account_id}")
    row = database.cur.fetchone()
    if row is None:
        return None
    return UserAccount(id=row[0], name=row[1], gender=row[2], birthday=row[3])