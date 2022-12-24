from fastapi import FastAPI
import processor
import uvicorn

app = FastAPI()
processor.register_routers(app)

if __name__ == "__main__":
    uvicorn.run(app, host="localhost", port=8000)