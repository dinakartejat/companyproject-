class AdminsController < ApplicationController

def index
  @admins = Admin.all
end
def show
  @admin=Admin.find(params[:id])
end
def create
  @admin=Admin.new(admins_params)
  if @admin.save
    flash[:notice]="admin is successfully created"
    redirect_to admins_path
  else
    render 'new'
  end
end
def new
  @admin = Admin.new
end
def edit
  @admin=Admin.find(params[:id])
end
def update
  @admin=Admin.find(params[:id])
  if @admin.update(admins_params)
        flash[:notice]="admin is successfully updated "
       redirect_to admins_path
     else
       render 'edit'
   end
end
   def destroy
     @admin=Admin.find(params[:id])
     @admin.delete
   end

   def admins_params
     params.require(:admin).permit(:username,:password,:email,:name )
   end
end
