class Idea
	attr_reader :title, :description, :rank, :id
	include Comparable

	def <=>(other)
  	other.rank <=> rank
	end

	def initialize(attributes = {})
	  @title = attributes["title"]
	  @description = attributes["description"]
	  @rank = attributes["rank"] || 0
	  @id = attributes["id"]
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