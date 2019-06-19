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
  end

  class LoadData
    def initialize(main, input)
      @main_code = main
      @input_code = input
    end

    def main_code
      return @main_code
    end

    def input_code
      return @input_code
    end
  end

  def load_example
    example = Testcase.find(params[:id])

    respond_to do |format|
        format.json { render json: example }
    end
  end
end
