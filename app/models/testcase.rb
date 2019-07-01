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
    # TODO: different path for each executation
    nt = Thread.new do
      path = "#{ENV['HOME']}/py-conbyte"
      file_path = "#{path}/runtime/#{self.name}.py"
      File.open(file_path, 'w') { |file| file.write(self.main_code) }
      self.input_code.gsub "\"" "\\\""
      cmd = "echo \"#{self.input_code}\" | #{path}/py-conbyte.py --stdin #{file_path} 2>&1"
      self.result = %x{ #{cmd + " 2>&1"} }
    end
    nt.join
    puts self.result
    return true
  end
end
