import requests
city="chennai"
print"iam from %s"%city

r=requests.get('http://www.google.com')
print r.status_code
