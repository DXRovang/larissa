class Person < ApplicationRecord
  validates_presence_of :name 
  belongs_to :job

def self.search(search)
  if search
    job = Job.find_by(title: search)
    if job
      self.where(job_id: job)
    else
      Person.all
    end
  else
    Person.all
  end
end
end
