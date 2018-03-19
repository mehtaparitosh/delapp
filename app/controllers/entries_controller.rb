class EntriesController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_admin
  before_action :find_entry, only: [:show, :destroy]

  def index
    @month = Entry.last.month
    @entries = Entry.where(:month => [@month, @month-1])
    respond_to do |format|
      format.html
      format.xls { send_data @entries.to_csv(col_sep: "\t")}
      # format.xls
    end
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
    # sleep(10)
    # redirect_to destroy_user_session_path
  end

  def edit
    @entry = Entry.last
    if current_user.is_first == true
      current_user.is_first = false
      current_user.save
      redirect_to edit_user_registration_path
    elsif (@entry == nil) ||(@entry.month != (Time.now.month))
      redirect_to new_entry_path
    end
  end

  def update
    @entry = Entry.last
    @entry.month = Time.now.month
    @entry.year = Time.now.year
    if @entry.update(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end



  private

  def entry_params
    params.require(:entry).permit(:_1, :_2, :_3, :_4, :_5, :_6, :_7, :_8, :_9, :_10,
      :_11, :_12, :_13, :_14, :_15, :_16, :_17, :_18, :_19, :_20, :_21, :_22, :_23, :_24,
      :_25, :_26, :_27, :_28, :_29, :_30, :_31, :_32, :_33, :_34, :_35, :_36, :_37)
  end

  def find_entry
    @entry = Entry.find(params[:id])
  end

end
