module CrazyChaarts

  class BaseChart

    attr_reader :input_file
    attr_reader :output_file
    attr_reader :highcharts_path
    attr_reader :scale


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

    # Chart options
    def chart_height=(height)
      @hash[:chart][:height] = height
    end

    def chart_width=(width)
      @hash[:chart][:width] = width
    end

    def chart_backgroundColor=(color)
      @hash[:chart][:backgroundColor] = color
    end

    # Series options
    def series_data=(series_data)
      @hash[:series] = series_data
    end

    # Title options
    def title_text=(text)
      @hash[:title][:text] = text
    end

    # Legend options
    def legend_layout=(layout)
      @hash[:legend][:layout] = layout
    end

    def legend_align=(align)
      @hash[:legend][:align] = align
    end

    def legend_verticalAlign=(vertical_align)
      @hash[:legend][:verticalAlign] = vertical_align
    end

    def legend_x=(x)
      @hash[:legend][:x] = x
    end

    def legend_y=(y)
      @hash[:legend][:y] = y
    end

    def legend_floating=(floating)
      @hash[:legend][:floating] = floating
    end

    def legend_enabled=(enabled)
      @hash[:legend][:enabled] = enabled
    end

    def legend_itemSyle=(style)
      @hash[:legend][:itemStyle] = style
    end

    def legend_width=(width)
      @hash[:legend][:width] =  width
    end

    def legend_labelFormat=(format)
      @hash[:legend][:labelFormat] = format
    end

    protected

    def before_create_json
    end

    def after_json_created(json)
      json
    end

  end
end