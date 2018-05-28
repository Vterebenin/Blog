module ApplicationHelper
	def markdown(source)
    Kramdown::Document.new(source).to_html.html_safe
  end

  def main_title
  	if params[:controller] == "posts"
  		"My words"
  	elsif params[:controller] == "projects"
  		"My addiction"
  	elsif params[:controller] == "static_pages" && params[:action] == "about"
  		"Myself"
  	elsif params[:controller] == "static_page" && params[:action] == "contact"
  		"My connections"
  	else
  		""
  	end
  end
end
