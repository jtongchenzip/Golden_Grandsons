import enum

class GenderType(str, enum.Enum):
    male = 'MALE'
    female = 'FEMALE'
    transgender = 'TRANSGENDER'
    non_binary = 'NON_BINARY'
    prefer_not_to_respond = 'PREFER_NOT_TO_RESPOND'

class SessionStatusType(str, enum.Enum):
    reserved = 'RESERVED'
    ongoing = 'ONGOING'
    complete = 'COMPLETE'