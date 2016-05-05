# app/workers/resque_job.rb

class ResqueJob
  @queue = :queue

  def self.perform(id)
    # here we code the heavy task to be done
    sleep 4 # simulate doing some work that takes a while
    puts "Complete work #{id}"
  end
end