Dir[Rails.root.join('db/seeds/*.rb')].each { |file| load file }
