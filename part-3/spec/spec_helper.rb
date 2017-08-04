path_to_part_3_folder = File.expand_path('../..', __FILE__)
Dir["#{path_to_part_3_folder}/*.rb"].each do |file|
  klass = File.basename(file).gsub(/(?:^|_)(.)/) { |x| x.upcase }.gsub(/_/, '').sub(/\.rb\Z/, '')
  autoload klass.to_sym, file
end
