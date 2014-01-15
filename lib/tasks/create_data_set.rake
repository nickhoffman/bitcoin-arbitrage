namespace :data_sets do
  task :create => :environment do
    DataSetCreator.new.create
  end
end
