class Idea
	attr_reader :title, :description, :rank
	include Comparable

	def initialize(attributes = {})
	  @title = attributes["title"]
	  @description = attributes["description"]
	  @rank = attributes["rank"] || 0
	end
	
	def save
	 IdeaStore.create(to_h)
	end

	def to_h
		{
			"title" => title,
			"description" => description,
			"rank" => rank
		}
	end

	def like!
		@rank += 1
	end

	def database
		Idea.database
	end
end