namespace :db do
  desc 'Load the gzipped YubNub database into your Postgres database'
  # task :seed do
  task :yubnub => ['db:drop', 'db:create'] do
    db = 'yubnub_dev' # TODO read from Heroku ENV var, or fallback to config/database.yml[:development]
    file = 'yubnub_2013-01-02.pg.sql.gz'
    command = 'psql' # would work equally well with mysql (locally)
    puts "Loading db/#{file} into #{command} #{db} ..."
    `gunzip -c '#{Rails.root.join('db', file)}' | #{command} #{db}`
    puts "Done"
  end
end
