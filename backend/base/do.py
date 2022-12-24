"""
data objects
"""

# from dataclasses import dataclass
from typing import Optional, Sequence
from datetime import date, time, datetime
from pydantic import BaseModel

from base import enums

class UserAccount(BaseModel):
    id: int
    name: str
    gender: enums.GenderType
    birthday: datetime


class Domain(BaseModel):
    id: int
    name: str

class DietitianAvailableTime(BaseModel):
    id: int
    dietitan_id: int
    available_day: int
    start_time: time
    end_time: time

class DietitianAccount(BaseModel):
    id: int
    name: str
    gender: enums.GenderType
    domain: Sequence[Domain]
    available_time: Sequence[DietitianAvailableTime]
    phone_number: str
    introduction: str
    work_unit: str

class AdvertiserAccount(BaseModel):
    id: int
    name: str

class Session(BaseModel):
    id: int
    user_id: int
    dietitan_id: int
    dietitan_name: str
    domain_id: int
    domain_name: str
    session_status: enums.SessionStatusType
    link: str
    start_time: datetime
    end_time: datetime

class Article(BaseModel):
    id: int
    advertiser_id: int
    advertiser_name: str
    post_time: datetime
    title: str
    context: str
