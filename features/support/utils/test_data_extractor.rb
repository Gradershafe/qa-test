module Utils
  class TestDataExtractor
    def self.define_extracting_data_methods()
      Dir["#{Constants::TEST_DATA_PATH}*"].each do |file_name|
        file_name = file_name.split('/').last
        define_method("get_#{file_name}") do
          file_data = {}
          File.open("#{Constants::TEST_DATA_PATH}#{file_name}").each do |line|
            key, value = line.split(': ')
            file_data[key.to_sym] = value
          end
          file_data
        end
      end
    end
  end
end