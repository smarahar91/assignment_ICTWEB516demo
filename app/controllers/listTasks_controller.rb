class ListTaskController < ApplicationController
	 
	def index
		@listTasks = ListTask.all.order("created_at DESC")
	end

	def new
		@listTask = ListTask.new
	end

	def create
		@listTask = ListTask.new(listTask_params)

		if @listTasks.save
			redirect_to @listTasks
		else
			render 'new'
		end
	end

	def show
	end

	def update

		if @listTask.update(listTask_params)
			redirect_to @listTasks
		else
			render 'edit'
		end
	end

	def edit
		@listTask = ListTask.find(params[:id])
	end

	def destroy
		@listTask = ListTask.find(params[:id])
		@listTask.destroy

		redirect_to listTasks_path

	end

	public

	def listTask_params
		params.require(:listTask).permit(:title, :content)
	end

	

end
