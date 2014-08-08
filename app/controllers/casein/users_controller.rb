# Scaffolding generated by Casein v5.0.0.0

module Casein
  class UsersController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Users'
  		@users = Users.order(sort_order(:name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View users'
      @users = Users.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new users'
    	@users = Users.new
    end

    def create
      @users = Users.new users_params
    
      if @users.save
        flash[:notice] = 'Users created'
        redirect_to casein_users_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new users'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update users'
      
      @users = Users.find params[:id]
    
      if @users.update_attributes users_params
        flash[:notice] = 'Users has been updated'
        redirect_to casein_users_path
      else
        flash.now[:warning] = 'There were problems when trying to update this users'
        render :action => :show
      end
    end
 
    def destroy
      @users = Users.find params[:id]

      @users.destroy
      flash[:notice] = 'Users has been deleted'
      redirect_to casein_users_path
    end
  
    private
      
      def users_params
        params.require(:users).permit(:name, :email, :nickname, :provider)
      end

  end
end