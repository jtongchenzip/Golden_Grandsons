from fastapi.encoders import jsonable_encoder

def error_content(message: str):
    res = {
        "response": {
            "data": None,
            "error": message }
    }
    content = jsonable_encoder(res)
    return content

def data_content(data):
    res = {
        "response": {
            "data": data,
            "error": None }
    }
    content = jsonable_encoder(res)
    return content