class HomeController < ApplicationController
	before_action :set_certificate, only: [:cert, :qa, :cp]	
	before_action :set_category, only: [:cp]	
	before_action :authenticate_user!, only: [:profile]

	def index
		@page = "Home"
		@featuredcert = Certificate.take(6)
		@mainpage = Mainpage.find(1)
	end

	def boards
		@page = "MYCert's Boards"
		@boards = Board.all
	end
	def eachboard
		@board = Board.find(params[:id])
	end

	def examiners
		@page = "MYCert's Examiners"
		@examiners = Examiner.all
	end

	def cert
		@page = "Certification List"
	end

	def viewcert
		@page = "Certificate Enquiry"
		@cert_id = params[:certid]
		@certificate = Certificate.find(@cert_id)
	end
	def enrolcert
		# render json: params
		@user = params[:enrol]
		# render json: @user
		UserMailer.enroll_email(@user).deliver_now
		@notice = 'Successfuly Enrol'
		redirect_to "/home" 
	end

	def qa
		@page = "Qualification List"
	end

	def cp
		@page = "Certified Professionals"
		
		if(!params[:search].nil?)

			@search_key = params[:search]
			@users = User.search_for(params[:search])
		else
			@users = User.all
			@search_key = ""
		end
	end

	def cpfiltercategory
		@page = "Certified Professionals"
		@cat_id = params[:id]
		@category = Category.find(@cat_id)
    	@certificates = profesionalfilter
    	@filter_type = "Category"
	end

	def cpfiltercertificate
		@page = "Certified Professionals"
		@cert_id = params[:certid]
		@certificate = Certificate.find(@cert_id)
    	@users = profesionalfiltercertificate
    	@filter_type = "Category"
	end

	def cpfilteruser
		@page = "Certified Professionals"
		@user_id = params[:userid]
		@user = getuser
		@certificates = @user.certificates.all
    	@filter_type = "Category"
	end

	def profile
		@page = current_user.name
		@user_id = current_user.id
		@user = getuser
		@certificates = @user.certificates.all
    	@filter_type = "Category"
	end

	def enrol_cert
		@user_id = params[:userid]
		@user = getuser
		UserMailer.enroll_email(@user).deliver_later
	end

	private
		def set_certificate
    	  @certificates = Certificate.all
    	end

    	def set_category
    	  @categories = Category.all
    	end

    	def profesionalfilter
		    if @cat_id == nil
		      	@result = Certificate.all
		    elsif @cat_id != nil
		      	@result = Certificate.where(category_id: @cat_id)
		    end
		end

		def profesionalfiltercertificate
			if @cert_id == nil
		      	@result = User.all
		    elsif @cert_id != nil
		      	@result = Certificate.find(@cert_id).users.all
		    end
		end
		def getuser
			if @user_id == nil
		      	@result = User.all
		    elsif @user_id != nil
		      	@result = User.find(@user_id)
		    end
		end
end
 