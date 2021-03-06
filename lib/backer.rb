require_relative 'project.rb'
class Backer

attr_accessor :backed_projects, :name

#takes a name on initialisation
  def initialize(name)
    @name = name
    @backed_projects = []
  end

#accepts a Project as an argument and stores it in a backed_projects array
  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end
#also adds the backer to the project's backers array
end
