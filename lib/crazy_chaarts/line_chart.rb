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

    # xAxis options
    def xAxis_tickColor=(color)
      @hash[:xAxis][:tickColor] = color
    end

    def xAxis_tickLength=(length)
      @hash[:xAxis][:tickLength] = length
    end

    def xAxis_lineColor=(color)
      @hash[:xAxis][:lineColor] = color
    end

    def xAxis_lineWidth=(width)
      @hash[:xAxis][:lineWidth] = width
    end

    def xAxis_categories=(categories)
      @hash[:xAxis][:categories] = categories
    end

    # yAxis options
    def yAxis_tickColor=(color)
      @hash[:yAxis][:tickColor] = color
    end

    def yAxis_tickLength=(length)
      @hash[:yAxis][:tickLength] = length
    end

    def yAxis_lineColor=(color)
      @hash[:yAxis][:lineColor] = color
    end

    def yAxis_lineWidth=(width)
      @hash[:yAxis][:lineWidth] = width
    end

    def yAxis_labels=(labels_options)
      @hash[:yAxis][:labels] = labels_options
    end

    def yAxis_title=(yAxis_title)
      @hash[:yAxis][:title][:text] = yAxis_title
    end

  end
end