module ProjectsHelper
	def adaptive_height
  	projects = Project.all
  	height = (200*((projects.count + 4) / 4).to_i).to_s + "px"
  end
end
