#
# Demo Programm für PostgresQL in Ruby
# 

require 'postgres'

PG_HOST = "localhost"
PG_PORT = 5432
PG_DB = "camp2012db"
PG_USER = "zeg"
PG_PASSWORD = "geheim!"


conn = PGconn.connect(PG_HOST, PG_PORT, '', '', PG_DB, PG_USER, PG_PASSWORD)

res  = conn.exec('select tablename, tableowner from pg_tables')

res.each do |row|
  row.each do |column|
   puts column
  end
end
