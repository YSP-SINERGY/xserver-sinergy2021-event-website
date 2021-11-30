from datetime import date, datetime
from decimal import Decimal

from sqlalchemy import create_engine
import os
from dotenv import load_dotenv
load_dotenv()

class Db():
    def __init__(self):
        db_url = f"mysql+pymysql://{os.getenv('DB_USERNAME')}:{os.getenv('DB_PASSWORD')}@{os.getenv('DB_HOST')}/{os.getenv('DB_DATABASE')}"
        
        engine = create_engine(db_url)
        self.connection = engine.connect()

    def __del__(self):
        self.connection.close()

    def clean_select_row(self, row, keys):
        """
        a function to select a row cleanly
        params:
            row: a certain row in DB(sqlalchemy.engine.row.LegacyRow)
            keys: field values of the row above(sqlalchemy.engine.result.RMKeyView)
        return:
            current_row: a clean row(dict)
        """
        try:
            clean_row = [str(field) if isinstance(field, datetime) or isinstance(
                field, Decimal) or isinstance(field, date) else field for field in list(row)]
            current_row = {}
            for i in range(len(keys)):
                current_row[list(keys)[i]] = clean_row[i]
            return current_row
        except Exception as e:
            print(e)
            return None

    def clean_select_results(self, data, keys):
        """
        a function to select results cleanly
        params:
            data: a list of rows in DB(list)
            keys: field values of the data list above(sqlalchemy.engine.result.RMKeyView)
        return:
            result_data: a list of cleaned rows each in a dictionary format(list)
        """
        if len(data) == 0:
            return {}
        result_data = []
        for row in data:
            result_data.append(self.clean_select_row(row, keys))
        return result_data