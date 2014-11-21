class ChallengesController < ApplicationController

	before_filter :load_challenge, only: [:show, :edit, :destroy]

	def index
		# @challenges = Challenge.order('created_at DESC').limit(10)
		search_to_str = params[:q] || ""
	    search_to_str ='%' + search_to_str + '%'
	    @challenges = Challenge.where("title like ?", search_to_str).order(created_at: :desc)
	end

	def new
		@challenge = Challenge.new 
	end

	def show
		@vote = @challenge.votes.new
		@total = @challenge.votes.count_mails(params[:id])
	end

	def create
		@challenge = Challenge.create challenge_params
		if @challenge.save
			flash[:notice] = "Challenge create successfully"
			redirect_to challenges_path
		else
			flash[:error] = "Error"
			render 'new'
		end
	end

	def edit
		
	end

	def update
		@challenge = Challenge.find params[:id]
		if @challenge.update_attributes challenge_params 
			flash[:notice] = "Callenge update successfully"
			redirect_to challenges_path
		end
	end
	
	def destroy
		if @challenge.destroy
			flash[:notice] = "Callenge delete successfully"
		end
		redirect_to challenges_path
	end


	private
	
	def challenge_params 
 		params.require(:challenge).permit(:title, :description)
	end

	def load_challenge
		@challenge = Challenge.find params[:id]
	end

	

end
