import fastapi

def register_routers(app: fastapi.FastAPI):
    from . import (
        account,
        article,
        dietitian,
        session
    )
    app.include_router(account.router)
    app.include_router(article.router)
    app.include_router(dietitian.router)
    app.include_router(session.router)