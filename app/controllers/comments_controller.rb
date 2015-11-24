class CommentsController < ApplicationController

	def create
    if current_user.present?
      @advertisment = Advertisment.find(params[:advertisment_id])
      @comment = @advertisment.comments.new(comment_params)
      @comment.user_id = current_user.id
      @comment.save 
      #redirect_to advertisment_path(@advertisment)
      respond_to do |format|
        format.html {redirect_to advertisment_path(@advertisment)}
        format.js # render comments/create.js.erb
      end
    else
      redirect_to :back, :notice => "My notice"
    end
  end

	private

  def comment_params
    params.require(:comment).permit(:text,:user_id)
  end

end
