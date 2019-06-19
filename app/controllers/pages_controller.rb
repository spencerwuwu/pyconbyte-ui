class PagesController < ApplicationController
  def index
    @examples = Testcase.all

    if (params.has_key?(:id))
      @display = Testcase.find(params[:id])
    else
      @display = Testcase.find(1)
    end

    @main_code = @display.display_code("main")
    @input_code = @display.display_code("input")
    @name = @display.name
  end

  # For creating task
  def create_task
    @task = Testcase.new()
    @task.main_code = params[:main_code]
    @task.input_code = params[:input_code]
    @task.name = params[:name]
    respond_to do |format|
      if @task.handle_task
        format.json { render json: @task }
      else
        format.json { head :no_content }
      end
    end
  end
  def load_example
    example = Testcase.find(params[:id])

    respond_to do |format|
        format.json { render json: example }
    end
  end

end
