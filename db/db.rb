DB = Sequel.connect(
  adapter: :postgres,
  database: 'sinatra_seq_dev',
  host: 'localhost',
  password: 'postgres',
  user: 'postgres',
  max_connections: 10,

  #logger: Logger.new('log/db.log')
  )