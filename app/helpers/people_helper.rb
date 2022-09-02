module PeopleHelper

  def producer_title
    Person.where(title: "Producer")
  end

end
