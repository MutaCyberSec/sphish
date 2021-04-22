import os
import sys
import socket
import urllib
from urllib.request import Request,urlopen
from urlilib.error import URLError,HTTPError
import urllib.parse
import mechanize
timeout = 15
socket.setdafaulttimeout(timeout)


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
# form {code: (shortmessage, longmessage)}.

responses = {
100: (’Continue’, ’Request received, please _continue’),
101: (’Switching Protocols’,
’Switching to new protocol; obey Upgrade header’),
200: (’OK’, ’Request fulfilled, document follows’),
201: (’Created’, ’Document created, URL follows’),
202: (’Accepted’,
’Request accepted, processing continues off-line’),
203: (’Non-Authoritative Information’, ’Request fulfilled _from cache’),
204: (’No Content’, ’Request fulfilled, nothing follows’),
205: (’Reset Content’, ’Clear input form _for further input.’),
206: (’Partial Content’, ’Partial content follows.’),
300: (’Multiple Choices’,
’Object has several resources -- see URI list’),
301: (’Moved Permanently’, ’Object moved permanently -- see URI list’),
302: (’Found’, ’Object moved temporarily -- see URI list’),
303: (’See Other’, ’Object moved -- see Method _and URL list’),
304: (’Not Modified’,
’Document has _not changed since given time’),
305: (’Use Proxy’,
’You must use proxy specified _in Location to access this ’
’resource.’),
307: (’Temporary Redirect’,
’Object moved temporarily -- see URI list’),
400: (’Bad Request’,
’Bad request syntax _or unsupported method’),
401: (’Unauthorized’,
’No permission -- see authorization schemes’),
402: (’Payment Required’,

’No payment -- see charging schemes’),
403: (’Forbidden’,
’Request forbidden -- authorization will _not help’),
404: (’Not Found’, ’Nothing matches the given URI’),
405: (’Method Not Allowed’,
’Specified method ais invalid _for this server.’),
406: (’Not Acceptable’, ’URI _not available _in preferred format.’),
407: (’Proxy Authentication Required’, ’You must authenticate _with ’
’this proxy before proceeding.’),
408: (’Request Timeout’, ’Request timed out; _try again later.’),
409: (’Conflict’, ’Request conflict.’),
410: (’Gone’,
’URI no longer exists _and has been permanently removed.’),
411: (’Length Required’, ’Client must specify Content-Length.’),
412: (’Precondition Failed’, ’Precondition _in headers _is false.’),
413: (’Request Entity Too Large’, ’Entity _is too large.’),
414: (’Request-URI Too Long’, ’URI _is too long.’),
415: (’Unsupported Media Type’, ’Entity body _in unsupported format.’),
416: (’Requested Range Not Satisfiable’,
’Cannot satisfy request range.’),
417: (’Expectation Failed’,
’Expect condition could _not be satisfied.’),
500: (’Internal Server Error’, ’Server got itself _in trouble’),
501: (’Not Implemented’,
’Server does _not support this operation’),
502: (’Bad Gateway’, ’Invalid responses _from another server/proxy.’),
503: (’Service Unavailable’,
’The server cannot process the request due to a high load’),
504: (’Gateway Timeout’,
’The gateway server did _not receive a timely response’),
505: (’HTTP Version Not Supported’, ’Cannot fulfill request.’),
}

