class Person < ApplicationRecord
  validates_presence_of :name, :title, :agency, :email
end
