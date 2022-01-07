from db import Db
from flask import request
from flask_restful import Resource
from sqlalchemy import text as sql_text


class YouthVote(Resource): # YouthページでAPIリクエスト時のロジックを制御するクラス
    """ The votes View """

    def __init__(self):
        self.db = Db()

    def get(self):
        """ Returns a list of votes """

        # query = "SELECT * FROM youth_vote ORDER BY id ASC"
        query = "SELECT ip_address, user_agent FROM youth_connection;"

        res = self.db.connection.execute(query)
        rows = res.fetchall()
        keys = res.keys()
        user_terminals = self.db.clean_select_results(rows, keys)

        return {
            'user_terminals': user_terminals
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
        vote_query = "UPDATE youth_vote SET vote_counts = vote_counts + 1 WHERE id = :id"
        connection_query = "INSERT INTO youth_connection (id, presenter_id, ip_address, user_agent) VALUES (DEFAULT, :id, :ip, :user_agent)"
        try:
            self.db.connection.execute(sql_text(vote_query), data)
            self.db.connection.execute(sql_text(connection_query), data)
            return True
        except Exception as err:
            return err

class TeensVote(Resource): # TeensページでAPIリクエスト時のロジックを制御するクラス
    """ The votes View """

    def __init__(self):
        self.db = Db()

    def get(self):
        """ Returns a list of votes """

        # query = "SELECT * FROM teens_vote ORDER BY id ASC"
        query = "SELECT ip_address, user_agent FROM teens_connection;"

        res = self.db.connection.execute(query)
        rows = res.fetchall()
        keys = res.keys()
        user_terminals = self.db.clean_select_results(rows, keys)

        return {
            'user_terminals': user_terminals
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
        query = "UPDATE teens_vote SET vote_counts = vote_counts + 1 WHERE id = :id"
        connection_query = "INSERT INTO teens_connection (id, presenter_id, ip_address, user_agent) VALUES (DEFAULT, :id, :ip, :user_agent)"
        try:
            self.db.connection.execute(sql_text(query), data)
            self.db.connection.execute(sql_text(connection_query), data)
            return True
        except Exception as err:
            return err