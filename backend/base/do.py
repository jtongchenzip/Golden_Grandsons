"""
data objects
"""

from dataclasses import dataclass
from typing import Optional, Sequence
from datetime import date, time, datetime

from base import enums

@dataclass
class UserAccount:
    id: int
    name: str
    gender: enums.GenderType
    birthday: date


@dataclass
class Domain:
    id: int
    name: str

@dataclass
class DietitianAvailableTime:
    id: int
    dietitan_id: int
    available_day: int
    start_time: time
    end_time: time


@dataclass
class DietitianAccount:
    id: int
    name: str
    gender: enums.GenderType
    domain: Sequence[Domain]
    available_time = Sequence[DietitianAvailableTime]
    phone_number: str
    introduction: str
    work_unit: str


@dataclass 
class AdvertiserAccount:
    id: int
    name: str


@dataclass
class Session:
    id: int
    user_id: int
    dietitan_id: int
    domain_id: int
    session_status: enums.SessionStatusType
    link: str
    start_time: datetime
    end_time: datetime


@dataclass
class Article:
    id: int
    advertiser_id: int
    post_time: datetime
    title: str
    context: str
