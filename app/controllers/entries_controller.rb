class EntriesController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_admin
  before_action :find_entry, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.is_first == false
      current_user.is_first = true
      current_user.save
      redirect_to edit_user_registration_path
    end

    @entries = Entry.all.order("created_at ASC")
  end


  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.month = Time.now.month
    @entry.year = Time.now.year
    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end


  def show
  end

  def edit
  end

  def update
    @entry.month = Time.now.month
    @entry.year = Time.now.year
    if @entry.update(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def downloads
  end

  private

  def entry_params
    params.require(:entry).permit(:month, :year, :_1, :_2, :_3, :_4, :_5, :_6, :_7, :_8, :_9, :_10,
      :_11, :_12, :_13, :_14, :_15, :_16, :_17, :_18, :_19, :_20, :_21, :_22, :_23, :_24,
      :_25, :_26, :_27, :_28, :_29, :_30, :_31, :_32, :_33, :_34, :_35, :_36, :_37)
  end

  def find_entry
    @entry = Entry.find(params[:id])
  end

end
