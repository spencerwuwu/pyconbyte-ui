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
      ran = rand(100)
      path = "#{Rails.root}/backend"
      system("mkdir -p #{path}/runtime/#{ran}/")
      file_path = "#{path}/runtime/#{ran}/#{self.name}.py"
      File.open(file_path, 'w') { |file| file.write(self.main_code) }
      cmd = "echo \"#{self.input_code}\" | #{path}/wrapper.py #{self.name}.py #{ran} 2>&1"
      puts cmd
      self.result = %x{ #{cmd} }
      system("rm -rf #{path}/runtime/#{ran}/")
    end
    nt.join
    puts self.result
    return true
  end
end
