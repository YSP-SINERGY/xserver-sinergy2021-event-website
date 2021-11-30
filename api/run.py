from flask import Flask
from flask_cors import CORS
from flask_restful import Api
from views import Vote

app = Flask(__name__)
CORS(app)
api = Api(app)


api.add_resource(Vote, '/api/v1/votes/') # api endpoint

if __name__ == "__main__":
    app.run()