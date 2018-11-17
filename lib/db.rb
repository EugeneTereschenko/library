class Db
  DEFAULT_PATH_TO_FILE = 'database.yml'.freeze

  def initialize(path_to_file)
   if path_to_file.empty?  
      @path_to_file = DEFAULT_PATH_TO_FILE
   else
      @path_to_file = path_to_file
   end
  end

  def read_database
    if File.exist?(@path_to_file)
      YAML.load_file(@path_to_file, nil)
    else
      nil
    end
  end

  def write_database(library)
    File.open(@path_to_file, 'w') { |file| file.write(library.to_yaml) }
  end
end
