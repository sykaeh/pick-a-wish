class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :leave, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = current_user.groups

    @public_groups = Group.where(public: true)
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create

    logger.info params.to_yaml
    @group = Group.new(group_params)

    # Add current user to the group
    Member.create(user: current_user, group: @group, accepted: DateTime.now, active: true)

    # Add all of the other users
    params[:users].each do |email|
      unless email.blank?
        # Todo send e-mails
        user = User.find_by_email(email)
        if user.nil?
          Member.create(email: email, group: @group, invited: DateTime.now)
        else
          Member.create(user: user, group: @group, email: email, invited: DateTime.now)
        end
      end
    end

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    m = Member.find(params[:id])
    m.user = current_user
    m.accepted = DateTime.now
    m.active = true
    m.save

    redirect_to :root
  end

  def reject
    m = Member.find(params[:id])
    m.user = current_user
    m.declined = DateTime.now
    m.save

    redirect_to :root
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def leave
    @group.users.destroy(current_user)
    if @group.users.empty?
      @group.destroy
    end

    redirect_to :root
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :public)
    end
end
