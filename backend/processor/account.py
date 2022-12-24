from base.content_formatter import error_content, payload_content 
from fastapi.responses import JSONResponse
from fastapi import APIRouter
from util import account, session

router = APIRouter(
    tags=['account'],
    default_response_class=JSONResponse
)

@router.get("/account/{account_id}", summary="Get one User Account")
async def get_one_account(account_id: int):
    user = await account.get(account_id) 
    if user is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    return JSONResponse(status_code=200, content=payload_content(payload=user))

@router.get("/account/{account_id}/session", summary="Get a user's session")
async def get_session_under_account(account_id: int):
    sessions = await session.get_sessions(account_id=account_id)
    if sessions is None:
        return JSONResponse(status_code=404, content=error_content(message="UserAccountNotFound"))

    return JSONResponse(status_code=200, content=payload_content(payload=sessions))