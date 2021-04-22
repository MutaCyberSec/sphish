import os
import sys
#socket liblary
import socket
#urllib
import urllib
from urllib import urlopen
from urllib import URLError,HTTPError
import urllib.parse
#mechanize liblary
import mechanize
import cookielib
# some settings
timeout = 15
socket.setdafaulttimeout(timeout)
br = mechanize.Browser()
# browser settings
br.set_handle_equiv(True)
br.set_handle_gzip(True)
br.set_handle_redirect(False)
br.set_handle_referer(True)
br.set_handle_robots(False)
br.set_debug_response(True)
br.set_debug_http(True)
# br.addheaders=[{}]

print "Enter Your Direct Url"
urltarget=string(input("url>>"))
#check http error
firsttrial = urllib.request.Request(urltarget)
try: urllib.request.urlopen(firsttrial)
except HTTPError as fail:
        print ("The server Didnot Respond")
print ("Error code:",e.code)
print ('Reason:',e.reason)

#check the network connection or server existance

firsttrial = urllib.request.Request(urltarget)
try: urllib.request.urlopen(firsttrial)
except urllib.error.URLError as failed:
        print ("Failed With Error Code",fail.code)
print (fail.read)
print ("Reason Being",fail.reason)
html=response.read()
