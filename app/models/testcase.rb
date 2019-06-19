class Testcase < ApplicationRecord

  def display_code(type)
    if type == "main"
      code = self.main_code
    elsif type == "input"
      code = self.input_code
    end
    code = code.gsub "\n", "\\n"
    code.gsub "\"\t", "\\t"
    code.gsub "\"", "\\\""
    code.gsub "\'", "\\\'"

    return code
  end

  def handle_task
  end
end
