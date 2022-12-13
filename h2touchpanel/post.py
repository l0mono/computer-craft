import tweepy
import discord
import datetime
import time
import os

keys = open('token.txt', 'r')
key = keys.readlines()

Access_Key = key[]
Access_Key_Secret = key[]
Access_Token = key[]
Access_Token_Secret = key[]

keys.close()
#print(Access_Key.replace('/n',''))
#print(Access_Key_Secret.replace('n',''))
#print(Access_Token.replace('/n',''))
#print(Access_Token_Secret.replace('/n',''))


auth = tweepy.OAuthHandler(
    (Access_Key.replace('/n','')),
    (Access_Key_Secret.replace('n',''))
    )

auth.set_access_token(
    (Access_Token.replace('/n','')),
    Access_Token_Secret.replace('/n','')
    )

api = tweepy.API(auth)

dt_now = str(datetime.datetime.now())
object = "test"

api.update_status(object,dt_now)