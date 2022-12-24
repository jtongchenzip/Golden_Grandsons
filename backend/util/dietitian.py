from database import database
from typing import Sequence
from base.do import DietitianAccount, Domain, DietitianAvailableTime
from util.domain import get_domain

async def get_dietitian(dietitian_id: int) -> DietitianAccount:
    database.cur.execute(f"SELECT id, name, gender, phone_number, introduction, work_unit FROM dietitian_account where id={dietitian_id}")
    row = database.cur.fetchone()

    # print(row)

    if row is None:
        return None

    domains = await get_dietitian_domain(dietitian_id=row[0])
    available_times = await get_dietitian_time(dietitian_id=row[0])

    return DietitianAccount(id=row[0], name=row[1], gender=row[2], domain=domains, available_time=available_times,
                                     phone_number=row[3], introduction=row[4], work_unit=row[5])


async def get_dietitian_time(dietitian_id: int) -> Sequence[DietitianAvailableTime]:
    database.cur.execute(f"SELECT id, dietitian_id, available_day, start_time, end_time FROM dietitian_available_time where dietitian_id={dietitian_id}")
    rows = database.cur.fetchall()
    return [DietitianAvailableTime(id=row[0], dietitan_id=row[1], available_day=row[2], start_time=row[3], end_time=row[4]) for row in rows]

async def get_dietitian_domain(dietitian_id: int) -> Sequence[Domain]:
    database.cur.execute(f"SELECT dietitian_id, domain_id FROM dietitian_domain where dietitian_id={dietitian_id}")
    rows = database.cur.fetchall()
    dietitian_domains = []

    for row in rows:
        domain_id = row[1]
        dietitian_domains.append(await get_domain(domain_id))

    return dietitian_domains

async def get_dietitian_name(dietitian_id: int) -> str:
    database.cur.execute(f"SELECT * FROM dietitian_account where id={dietitian_id}")
    row = database.cur.fetchone()
    return row[1]