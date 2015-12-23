module CrazyChaarts

  class PieChart < BaseChart

    def initialize()
      # Call base chart initialize
      super(args[:input_file], args[:outfile], args[:highcharts_path], args[:scale])

      @hash = {
        chart: {
          plotShadow: false,
          type: 'pie',
          backgroundColor: nil,
          height: 200,
          width: 500
        },
        title: {
          text: ''
        },
        plotOptions: {
          pie: {
            size: 120,
            allowPointSelect: true,
            showInLegend: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: true,
              distance: 5,
              format: '<b>{point.name}</b>: {point.percentage:.2f} %',
              style: {
                width: '70px',
                fontSize: '8px',
                font: 'Arial Regular',
                color: '#3C3C3B'
              }
            }
          }
        },
        legend: {
            enabled: true,
            itemStyle: {
              fontSize:'9px',
              font: 'Arial Regular',
              color: '#3C3C3B'
            },
            layout: 'vertical',
            align: 'right',
            width: 150,
            verticalAlign: 'middle',
            labelFormat: '{name} ({y_label})'
        },
        series: [{
          name: 'Charges',
          colorByPoint: true,
          data: [{
              name: 'Energia',
              y: 102479,
              y_label: '$1.024.479'
          }, {
              name: 'Demanda',
              y: 100450,
              y_label: '$100.450'
          }, {
              name: 'Demanda HP',
              y: 306147,
              y_label: '$306.147'
          }, {
              name: 'Recargo FP',
              y: 147159,
              y_label: '$147.159'
          }, {
              name: 'Intereses',
              y: 9580,
              y_label: '$9.580'
          }, {
              name: 'Otros',
              y: 146780,
              y_label: '$146.780'
          }]
        }],
            credits: 'disabled'
      }
    end

    # Chart options
    def chart_plotshadow=(plotShadow)
      @hash[:chart][:plotShadow] = plotShadow
    end

    # PlotOptions options
    def plotoptions_piesize=(size)
      @hash[:plotOptions][:pie][:size] = size
    end

    def plotoptions_showlegend=(show_legend)
      @hash[:plotOptions][:pie][:showInLegend] = show_legend
    end

    def plotoptions_datalabels=(datalabels_options)
      @hash[:plotOptions][:pie][:dataLabels] =  datalabels_options
    end

  end
end