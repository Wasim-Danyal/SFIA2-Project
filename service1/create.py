from application import db
from application.models import Destination

db.drop_all()
db.create_all()