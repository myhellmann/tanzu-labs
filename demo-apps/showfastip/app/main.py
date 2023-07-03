from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
 
app = FastAPI()
 
@app.get("/", response_class=HTMLResponse)
async def index(request: Request):
    client_host = request.client.host
    return "Requester IP: " + client_host + "\n"
 