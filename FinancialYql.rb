require 'rubygems'
require 'yql'
require 'json'
require 'open-uri'

y=Yql::Client.new
query=Yql::QueryBuilder.new 'yahoo.finance.quotes'
puts query.to_s
query.conditions={:symbol=>'MSFT'}
puts query
y.query=query
response=y.get
puts response.show
#DJIA = Array.new('MMM', 'AA', 'AXP', 'T', 'BAC', 'BA', 'CAT', 'CVX', 'CSCO', 'KO',
#	'DD', 'XOM', 'GE', 'HPQ', 'HD', 'INTC', 'IBM', 'JNJ', 'JPM', 'MCD', 'MRK',
#	'MSFT', 'PFE', 'PG', 'TRV', 'UNH', 'UTX', 'VZ', 'WMT', 'DIS') 

realTimeQuery = 'sl1b3b2&e' # works better after hours - change in query declaration
delayedQuery = 'sl1ba&e' # works better during normal hours - change in query declaration

def generateDisplay(stock)
	#y.query = 'select * from csv where url="http://download.finance.yahoo.com/d/quotes.csv?s=%s&f=%s=.csv" and columns="symbol,last,bid,ask"' % [stock, realTimeQuery]
	#result = y.get
	#result.rows
	#for row in result.rows do
	#	print row.get('symbol')
	#	print row.get('last')
	#	print row
	#end
	print 
end

#for s in DJIA do
#	generateDisplay(s)
#end
	

