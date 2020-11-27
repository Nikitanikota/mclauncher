
# Python program to read 
# json file 
  
  
import json 
  
# Opening JSON file 
f = open('versions.json',)
  
# returns JSON object as  
# a dictionary 
data = json.load(f) 
  
# Iterating through the json 
# list 
for data2 in data['versions']:
    a = data2['url'] + "\n"
    b = data2['id'] + "\n"
    dictionary ={
        "id" : b,
        "url" : a
        }
    
    json_object = json.dumps(dictionary, indent = 4)
    print(json_object)

    with open('urls.txt', 'a') as g:
        g.write(a)
    with open('ids.txt', 'a') as d:
        d.write(b)

# Closing file 
f.close() 
