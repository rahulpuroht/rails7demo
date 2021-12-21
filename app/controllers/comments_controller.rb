class CommentsController < ApplicationController
	before_action :set_post

	def create
	@comment = @post.comments.create! params.required(:comment).permit(:content)
		CommentsMailer.submited(@comment).deliver_later
		redirect_to @post
	end

	private
	def set_post
		@post = Post.find_by(id: params[:post_id])
	end
end
