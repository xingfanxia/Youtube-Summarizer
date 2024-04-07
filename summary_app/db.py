import os

import sqlalchemy as sa

url = "sqlite:///test.db"
engine = sa.create_engine(url=url)
