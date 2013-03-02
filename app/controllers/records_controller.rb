class RecordsController < ApplicationController
  before_filter :authenticate_user!
  
  def get_total_from_records records
    records.reduce(0){|total, r| 
      r.total_amount + total
    }  
  end

  def summary
    @today          = Date.today
    @today_records  = Record.where({:created_at => (@today.at_beginning_of_day..Time.now)})
    records_of_moth = Record.where({:created_at => (@today.beginning_of_month-1..@today.end_of_month+1)})
    @today_total    = get_total_from_records(@today_records)
    @month_total    = get_total_from_records(records_of_moth)
    @mine_total     = (@month_total / 2).round

    respond_to do |format|
      format.html
      format.json { render json: @records }
    end  
  end

  def index
    @records = Record.all

    respond_to do |format|
      format.html
      format.json { render json: @records }
    end
  end

  def show
    @record = Record.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @record }
    end
  end

  def new
    @record = Record.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @record }
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(params[:record])

    respond_to do |format|
      if @record.save

        format.html { redirect_to root_path, notice: 'Record was successfully created.' }
        format.json { render json: @record, status: :created, location: @record }
      else
        format.html { render action: "new" }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @record = Record.find(params[:id])

    respond_to do |format|
      if @record.update_attributes(params[:record])
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy

    respond_to do |format|
      format.html { redirect_to records_url }
      format.json { head :no_content }
    end
  end
end
