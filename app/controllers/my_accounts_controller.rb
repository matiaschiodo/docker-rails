class MyAccountsController < ApplicationController
  before_action :set_my_account, only: %i[ show edit update destroy ]

  # GET /my_accounts or /my_accounts.json
  def index
    @my_accounts = MyAccount.all
  end

  # GET /my_accounts/1 or /my_accounts/1.json
  def show
  end

  # GET /my_accounts/new
  def new
    @my_account = MyAccount.new
  end

  # GET /my_accounts/1/edit
  def edit
  end

  # POST /my_accounts or /my_accounts.json
  def create
    @my_account = MyAccount.new(my_account_params)

    respond_to do |format|
      if @my_account.save
        format.html { redirect_to my_account_url(@my_account), notice: "My account was successfully created." }
        format.json { render :show, status: :created, location: @my_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_accounts/1 or /my_accounts/1.json
  def update
    respond_to do |format|
      if @my_account.update(my_account_params)
        format.html { redirect_to my_account_url(@my_account), notice: "My account was successfully updated." }
        format.json { render :show, status: :ok, location: @my_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_accounts/1 or /my_accounts/1.json
  def destroy
    @my_account.destroy

    respond_to do |format|
      format.html { redirect_to my_accounts_url, notice: "My account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_account
      @my_account = MyAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_account_params
      params.require(:my_account).permit(:first_name, :last_name, :email, :phone, :address)
    end
end
