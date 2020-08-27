from application import db


class Destination(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    country = db.Column(db.String(50), nullable = False)
    city = db.Column(db.String(50), nullable = False)
    food = db.Column(db.String(50), nullable = False)