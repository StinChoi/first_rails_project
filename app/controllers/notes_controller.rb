class NotesController < ApplicationController
def index 
  puts "index method in pages controller called"
  # rails magic by default rails will look for views/pages/index.html.erb - render that

  notes = Note.all
  # use react here, pass pages from my controler to my react component
  # via 'props'
  render component: "Notes", props: { notes: notes }
  end
   
  def new 
    render component: "NoteNew"
  end
  
  def create
    Note.create(title: params[:page][:title], author: params[:page][:author])
    
    # want to go back to pages index '/notes'
    # this really does a get request to '/notes'
    redirect_to notes_path
  end
end

 
    # if @note.save
    #    # this will take us to our index method
    #   redirect_to notes_path
    # else
  #      # renders app/views/pages/new.html.erb (ERB WAY)
  #     # render :new
  #     ## SSRR way ##
  #     render component: "NoteNew", props: { page: @page }
  #   end
  #  end

  #  private
  #  def notes_params
  #   params.require(:note).permit(:title, :author, :body)
  #  end



