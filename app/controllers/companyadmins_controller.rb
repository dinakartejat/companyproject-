class CompanyadminsController < ApplicationController
  def index
    @companyadmins = Companyadmin.all
  end
  def show
    @companyadmin=Companyadmin.find(params[:id])
  end
  def create
    @companyadmin=Companyadmin.new(companyadmin_params)
    if @companyadmin.save
      flash[:notice]="companyadmin is successfully created"
      redirect_to companyadmins_path
    else
      render 'new'
    end
  end
  def new
    @companyadmin = Companyadmin.new
  end
  def edit
    @companyadmin=Companyadmin.find(params[:id])
  end
  def update
    @companyadmin=Companyadmin.find(params[:id])
    if @companyadmin.update(companyadmin_params)
          flash[:notice]="companyadmin is successfully updated "
         redirect_to companyadmins_path
       else
         render 'edit'
     end
  end
     def destroy
       @companyadmin=Companyadmin.find(params[:id])
       @companyadmin.delete
     end

     def companyadmin_params
       params.require(:companyadmin).permit(:username,:password,:email )
     end
end
