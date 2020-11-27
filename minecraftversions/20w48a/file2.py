
# Python program to read 
# json file 
  
  
import json 
  
# Opening JSON file 
f = open('file.json',)
g = open('download.txt', 'w')
  
# returns JSON object as  
# a dictionary 
data = json.load(f) 
  
# Iterating through the json 
# list 
g.write(data['downloads']['client']['url'])

# Closing file 
f.close() 
g.close()
