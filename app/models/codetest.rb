class Codetest < ApplicationRecord
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
    # TODO: different path for each executation
    nt = Thread.new do
      path = "#{Rails.root}/backend"
      file_path = "#{path}/runtime/#{self.name}.py"
      File.open(file_path, 'w') { |file| file.write(self.main_code) }
      self.input_code.gsub "\"" "\\\""
      cmd = "echo \"#{self.input_code}\" | #{path}/wrapper.py 2>&1"
      #self.result = %x{ #{cmd} }
      self.result = cmd
    end
    nt.join
    puts self.result
    return true
  end
end
