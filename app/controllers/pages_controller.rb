class PagesController < ApplicationController
def index
  puts "index method in pages controller called"
  # rails magic by default rails will loook for view/pages/index.html.erb
  # & render that

  # use my model here
  pages = Page.all 
  
  # use react here, pass pages from my controller to my react component
    render component: "Pages", props: { pages:pages }
  end
end