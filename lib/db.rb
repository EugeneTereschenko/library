class Db
  DEFAULT_PATH_TO_FILE = 'database.yml'.freeze

  def initialize(path_to_file)
    @path_to_file = if path_to_file.empty?
                      DEFAULT_PATH_TO_FILE
                    else
                      path_to_file
                    end
  end

  def read_database
    YAML.load_file(@path_to_file, nil) if File.exist?(@path_to_file)
  end

  def write_database(library)
    File.open(@path_to_file, 'w') { |file| file.write(library.to_yaml) }
  end
end
