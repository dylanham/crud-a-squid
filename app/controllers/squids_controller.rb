class SquidsController < ApplicationController
    before_action :set_squid, only: [:edit,:show,:update,:destroy]
    def index
      @squids = Squid.all
    end

    def show
    end

    def new
      @squid = Squid.new
    end

    def create
      @squid = Squid.new(squid_params)
      if @squid.save
        flash[:notice] = 'You made a new squid'
        redirect_to squid_path(@squid)
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @squid.update(squid_params)
        flash[:notice] = 'You updated your squid'
        redirect_to squid_path(@squid)
      else
        render :edit
      end
    end

    def destroy
      @squid.destroy
      redirect_to squids_path
    end

    private

    def squid_params
      params.require(:squid).permit(:name,:type,:age)
    end

    def set_squid
      @squid = Squid.find(params[:id])
    end

end
