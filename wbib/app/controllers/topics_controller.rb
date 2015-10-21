class TopicsController < ApplicationController
	before_action :set_topic, only: [:show, :edit, :update, :destroy]

	def index
		@topic = Topic.all
	end

	def show
		@reference = @topic.references.new
	end

	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(params.require(:topic).permit(:title, :description))
		
		if @topic.save
			redirect_to @topic
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @topic.update(params.require(:topic).permit(:title, :description))
			redirect_to @topic
		else
			render :edit
		end
	end

	def destroy
		@topic.destroy
		redirect_to topics_url
	end

	private

	def set_topic
		@topic = Topic.find(params[:id])
	end

end
