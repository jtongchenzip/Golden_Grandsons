from fastapi.encoders import jsonable_encoder

def error_content(message: str):
    res = {
        "payload": None,
        "error": message
    }
    content = jsonable_encoder(res)
    return content

def payload_content(payload):
    res = {
        "payload": payload,
        "error": None 
    }
    content = jsonable_encoder(res)
    return content