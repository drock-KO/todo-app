class Project < ApplicationRecord
	
	validates_presence_of :project
	
	has_many :tasks, -> { order("deadline ASC")}
end
