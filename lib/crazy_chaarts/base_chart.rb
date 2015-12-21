module CrazyChaarts

  class BaseChart

    attr_accessor :input_file
    attr_accessor :output_file
    attr_accessor :highcharts_path
    attr_accessor :scale


    def initialize(input_file, output_file, highcharts_path, scale)
      @input_file      = input_file || "tmp/chart.json"
      @output_file     = output_file || "tmp/chart.png"
      @highcharts_path = highcharts_path || "vendor/highcharts/highcharts-convert.js"
      @scale           = scale || "2.5"
    end

    def to_img()

      before_create_json

      File.open("#{input_file}", 'w') do |f|
        json = @hash.to_json
        json = after_json_created(json)
        f.write(json)
      end

      system "phantomjs #{highcharts_path} -infile #{input_file}  -outfile #{output_file} -scale #{scale}  -constr Chart"
    end

    protected

    def before_create_json
    end

    def after_json_created(json)
      json
    end

  end
end