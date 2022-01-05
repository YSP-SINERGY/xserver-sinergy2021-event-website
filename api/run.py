from flask import Flask
from flask_cors import CORS
from flask_restful import Api
from views import YouthVote, TeensVote

app = Flask(__name__)
CORS(app)
api = Api(app)


api.add_resource(YouthVote, '/api/v1/youth_votes/') # api endpoint
api.add_resource(TeensVote, '/api/v1/teens_votes/') # api endpoint

if __name__ == "__main__":
    app.run()