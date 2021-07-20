class MembersController < ApplicationController
  def index
    @members = Member.all
  end
  
  def new
    @member = Member.new
  end
  
  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = "Successfully added a member."
      redirect_to members_path
    else
      render 'new'
    end
  end
  
  private
    def member_params
      params.require(:member).permit(:name, :number, :idm)
    end
end
