class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit_basic_info, :update_basic_info]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :edit_basic_info, :update_basic_info]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy, :edit_basic_info, :update_basic_info, :index,:edit_basic_s_info]
  before_action :admin_or_correct_user, only: :show
  before_action :set_one_month, only: :show

  def index
    

    # @users = User.paginate(page: params[:page])
    @users = User.where('name LIKE(?)', "%#{params[:name]}%").paginate(page: params[:page], per_page: 20)
  end

  def show
    @worked_sum = @attendances.where.not(started_at: nil).count
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = '新規作成に成功しました。'
      redirect_to @user
    else
      render :new
    end
  end
  
   def import
    if params[:file].blank?
      flash[:danger]= "csvファイルを選択して下さい"
      redirect_to users_url
    elsif
      File.extname(params[:file].original_filename) != ".csv"
      flash[:danger]= "csvファイル以外は出力できません"
      redirect_to users_url
    else
      User.import(params[:file])
      flash[:success]= "インポートが完了しました"
      redirect_to users_url
    end 
   
   rescue ActiveRecord::RecordInvalid
    flash[:danger]= "不正なファイルのため、インポートに失敗しました"
    redirect_to users_url
   rescue ActiveRecord::RecordNotUnique
    flash[:danger]= "既にインポート済です"
    redirect_to users_url
   end
  def edit
  end


  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "ユーザー情報を更新しました。"
      redirect_to @user
    else
      render :edit      
    end
  end

  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end

  def edit_basic_info
  end
  def edit_basic_s_info
  end

  def update_basic_info
    if @user.update(basic_info_params)
      flash[:success] = "#{@user.name}の基本情報を更新しました。"
    else
      flash[:danger] = "#{@user.name}の更新は失敗しました。<br>" + @user.errors.full_messages.join("<br>")
    end
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :affiliation,:employee_number,:uid, :password, 
        :password_confirmation, :basic_work_time, :designated_work_start_time, :designated_work_end_time)
    end

    def basic_info_params
      params.require(:user).permit(:department, :basic_time, :work_time)
    end
    
    
end