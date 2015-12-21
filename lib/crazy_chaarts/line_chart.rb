module CrazyChaarts

  class LineChart < BaseChart

    def initialize(args = {})
      # Call base chart initialize
      super(args[:input_file], args[:outfile], args[:highcharts_path], args[:scale])

      @hash = {
        chart: {
          type: 'line',
          backgroundColor: nil,
          marginTop: 45,
          spacingLeft: 20,
          height: 280,
          width: 500
        },
        title: {
          text: '',
          x: -20
        },
        xAxis: {
          tickColor: 'black',
          tickLength: 5,
          tickWidth: 0.5,
          lineColor: 'black',
          lineWidth: 0.5,
          categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
          tickColor: 'black',
          tickLength: 5,
          tickWidth: 0.5,
          lineColor: 'black',
          lineWidth: 0.5,
          gridLineWidth: 0,
          title: {
            align: 'high',
            offset: 15,
            text: 'kWh',
            rotation: 0,
            y: -20,
            style: {
              fontWeight: 'bold',
              textDecoration:"underline"
            }
          },
          labels: {
            format: '{value:,.0f}'
          }
        },
        legend: {
          layout: 'vertical',
          align: 'right',
          verticalAlign: 'top',
          x: -10,
          y: 50,
          floating: true
        },
        series: [
                  {
                    name: '2014',
                    data: [1230, 1530, 1470, 1590, 2450, 1260, 1850, 1260, 1620, 1320, 1470, 1840],
                    color: '#0B2E4F',
                    marker: {
                     symbol: 'circle'
                    }
                  },
                  {
                    name: '2015',
                    data: [1530, 1470, 1590, 1891, 1100, 890, 1250, 1470, 1860, 1230, 1320, 2200],
                    color: '#176E99',
                    marker: {
                     symbol: 'circle'
                    }
                  }
                ],
        credits: 'disabled'
      }
    end

    # Chart options
    def chart_height=(height)
      @hash[:chart][:height] = height
    end

    def chart_width=(width)
      @hash[:chart][:width] = height
    end

    def chart_backgroundcolor=(color)
      @hash[:chart][:backgroundColor] = color
    end

    # Title options
    def title_text=(text)
      @hash[:title][:text] = text
    end

    # xAxis options
    def xaxis_tickcolor=(color)
      @hash[:xAxis][:tickColor] = color
    end

    def xaxis_ticklength=(length)
      @hash[:xAxis][:tickLength] = length
    end

    def xaxis_linecolor=(color)
      @hash[:xAxis][:lineColor] = color
    end

    def xaxis_linewidth=(width)
      @hash[:xAxis][:lineWidth] = width
    end

    def xaxis_categories=(categories)
      @hash[:xAxis][:categories] = categories
    end

    # yAxis options
    def yaxis_tickcolor=(color)
      @hash[:yAxis][:tickColor] = color
    end

    def yaxis_ticklength=(length)
      @hash[:yAxis][:tickLength] = length
    end

    def yaxis_linecolor=(color)
      @hash[:yAxis][:lineColor] = color
    end

    def yaxis_linewidth=(width)
      @hash[:yAxis][:lineWidth] = width
    end

    def yaxis_title=(title_options)
      @hash[:yAxis][:title] = title_options
    end

    def yaxis_labels=(labels_options)
      @hash[:yAxis][:labels] = labels_options
    end

    # Legend options
    def legend_layout=(layout)
      @hash[:legend][:layout] = layout
    end

    def legend_align=(align)
      @hash[:legend][:align] = align
    end

    def legend_verticalalign=(vertical_align)
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

    # Series options
    def series_data=(series_data)
      @hash[:series] = series_data
    end

    def yAxis_title=(yAxis_title)
      @hash[:yAxis][:title][:text] = yAxis_title
    end

  end
end