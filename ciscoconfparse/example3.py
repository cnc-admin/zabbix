#!/usr/bin/python

from ciscoconfparse import CiscoConfParse

parse = CiscoConfParse('conf.txt')
basic_search = parse.find_blocks('trunk')
print basic_search

#Sanitize the output to replace , with a new line
f = open('output.txt','r')
filedata = f.read()
f.close()
newdata = filedata.replace(", ","\n")
f = open('output.txt','w')
f.write(newdata)
f.close()

#Sanitize he output for '
f = open('output.txt','r')
filedata = f.read()
f.close()
newdata = filedata.replace("'","")
f = open('output.txt','w')
f.write(newdata)
f.close()

#Sanitize he output for [
f = open('output.txt','r')
filedata = f.read()
f.close()
newdata = filedata.replace("[","")
f = open('output.txt','w')
f.write(newdata)
f.close()

#Sanitize he output for ]
f = open('output.txt','r')
filedata = f.read()
f.close()
newdata = filedata.replace("]","")
f = open('output.txt','w')
f.write(newdata)
f.close()

