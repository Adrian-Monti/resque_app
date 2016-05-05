# app/controllers/background_jobs_controller.rb

class BackgroundJobsController < ApplicationController
  def index
    (1..10).each do |i|
      puts "Adding to queue job #{i}"
      Resque.enqueue(ResqueJob, i) # ResqueJob es el nombre del worker

      # simulate some time between requests
      sleep 1.5
    end
  end
end