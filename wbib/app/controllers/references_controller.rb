class ReferencesController < ApplicationController
	before_action :set_reference, only: [:show, :edit, :update, :destroy]

	def index
		@reference = Reference.all
	end

	def new
		@topic = Topic.find params[:topic_id]
		@reference = @topic.references.new
	end

	def create
		@topic = Topic.find params[:topic_id]
		@reference = @topic.references.new(params.require(:reference).permit(:URL))
		
		if @reference.save
			redirect_to topic_url(@topic)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @reference.update(params.require(:reference).permit(:URL))
			redirect_to topic_url(@reference.topic)
		else
			render :edit
		end
	end

	def destroy
		@reference.destroy
		redirect_to topic_url(@reference.topic)
	end

	private

	def set_reference
		@reference = Reference.find(params[:id])
	end

end
