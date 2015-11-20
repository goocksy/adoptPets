class AdvertismentsController < ApplicationController

	before_filter :chek_if_signed, :only => :new

	def index
		@advertisments = Advertisment.all
	end

	def show
		@advertisment = Advertisment.where(id: params[:id]).first
	end

	def new
		@advertisment = Advertisment.new
	end

	def create
		@advertisment = Advertisment.create(advertisment_params)
		if @advertisment.errors.empty?
			redirect_to advertisment_path(@advertisment)
		else
			render "new"
		end
	end

	private

	def advertisment_params
  	params.require(:advertisment).permit(:tittle, :price, :comment, :category_id,:image,:image1,:image2,:image3)
	end

	def chek_if_signed
		redirect_to :back, :notice => "зарегайся!" unless current_user.present?
	end

end
