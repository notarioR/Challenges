class VotesController < ApplicationController
	# def index
	# 	@challenge = Challenge.find params[:id]
	# 	@votes = @challenge.votes
	# end

	# def new
	# 	@challenge = Challenge.find params[:id]
	# 	@vote = @challenge.votes.new
	# end

	# def show

	# end

	def create
		@vote = Challenge.find(params[:challenge_id]).votes.new vote_params
		if @vote.save
			flash[:notice] = "Vote add successfully"
			redirect_to challenge_path(params[:challenge_id])
		else
			flash[:error] = "Error"
			redirect_to challenge_path(params[:challenge_id])
		end	
	end

	private
	
	def vote_params 
 		params.require(:vote).permit(:mail)
	end


end
