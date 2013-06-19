#!/usr/bin/python

import yql
from time import sleep

y=yql.Public()
DJIA = ['MMM', 'AA', 'AXP', 'T', 'BAC', 'BA', 'CAT', 'CVX', 'CSCO', 'KO',
	'DD', 'XOM', 'GE', 'HPQ', 'HD', 'INTC', 'IBM', 'JNJ', 'JPM', 'MCD', 'MRK',
	'MSFT', 'PFE', 'PG', 'TRV', 'UNH', 'UTX', 'VZ', 'WMT', 'DIS'] 

realTimeQuery = 'sl1b3b2&e' # works better after hours - change in query declaration
delayedQuery = 'sl1ba&e' # works better during normal hours - change in query declaration

def generateDisplay(stock):
	query = 'select * from csv where url="http://download.finance.yahoo.com/d/quotes.csv?s=%s&f=%s=.csv" and columns="symbol,last,bid,ask"' % (stock, realTimeQuery)
	result = y.execute(query)
	result.rows
	for row in result.rows:
		print row.get('symbol')
		print row.get('last')
		print row
	
for s in DJIA:
	generateDisplay(s)
	

