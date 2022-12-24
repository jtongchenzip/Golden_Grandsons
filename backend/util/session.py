from database import database
from base.do import Session
from datetime import datetime
from typing import Sequence
from util import dietitian, domain

async def add(user_id: int, dietitian_id: int, domain_id: int, start_time: datetime, end_time: datetime) -> Session:
    database.cur.execute(f"INSERT INTO session (user_id, dietitian_id, domain_id, session_status, link, start_time, end_time) \
                           VALUES ('{user_id}', '{dietitian_id}', '{domain_id}', 'RESERVED', 'https://meet.google.com/vhf-ujur-jgu', \
                                   '{start_time}', '{end_time}') RETURNING id")
    id, = database.cur.fetchone()
    database.conn.commit()

    database.cur.execute(f"SELECT id, user_id, dietitian_id, domain_id, session_status, link, start_time, end_time FROM session where id = {id}")
    row = database.cur.fetchone()

    dietitian_name = await dietitian.get_name(dietitian_id=row[2])
    domain_name = await domain.get_name(domain_id=row[3])
    session = Session(id=row[0], user_id=row[1], dietitian_id=row[2], dietitian_name=dietitian_name,
                      domain_id=row[3], domain_name=domain_name,
                      session_status=row[4], link=row[5], start_time=row[6], end_time=row[7])

    return session


async def get_sessions(account_id: int) -> Sequence[Session]:
    database.cur.execute(f"SELECT id, user_id, dietitian_id, domain_id, session_status, link, start_time, end_time FROM session where user_id = {account_id}")
    rows = database.cur.fetchall()
    if rows is None:
        return None

    sessions = []
    for row in rows:
        dietitian_name = await dietitian.get_name(dietitian_id=row[2])
        domain_name = await domain.get_name(domain_id=row[3])
    
        sessions.append(Session(id=row[0], user_id=row[1], dietitian_id=row[2], dietitian_name=dietitian_name,
                        domain_id=row[3], domain_name=domain_name,
                        session_status=row[4], link=row[5], start_time=row[6], end_time=row[7]))

    return sessions

