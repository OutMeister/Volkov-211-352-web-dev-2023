import os

SECRET_KEY = '123456qwerty'
SQLALCHEMY_DATABASE_URI = f'mysql+mysqlconnector://std_2306_exam:123123123@std-mysql.ist.mospolytech.ru/std_2306_exam'
SQLALCHEMY_TRACK_MODIFICATIONS = True
SQLALCHEMY_ECHO = False
ADMIN_ROLE_ID = 1
MODER_ROLE_ID = 2

UPLOAD_FOLDER = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'media', 'images')