from db import Db
from flask import request
from flask_restful import Resource
from sqlalchemy import text as sql_text


class Vote(Resource):
    """ The votes View """

    def __init__(self):
        self.db = Db()

    def get(self):
        """ Returns a list of votes """

        query = "SELECT * FROM vote ORDER BY id ASC"
        res = self.db.connection.execute(query)
        rows = res.fetchall()
        keys = res.keys()
        votes = self.db.clean_select_results(rows, keys)

        return {
            'votes': votes
        }

    def patch(self):
        """
        Add a vote to the db 
        Expect a JSON payload with the following format
        {
            "vote_counts": "The number of votes gained"
        }
        """

        data = request.get_json()
        query = "UPDATE vote SET vote_counts = vote_counts + 1 WHERE id = :id"
        try:
            self.db.connection.execute(sql_text(query), data)
            return True
        except:
            return False