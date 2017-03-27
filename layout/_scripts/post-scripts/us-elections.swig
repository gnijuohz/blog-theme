<script type="text/javascript">

let voterData = [{"turnout": 57.6, "year": 1828}, {"turnout": 55.4, "year": 1832}, {"turnout": 57.8, "year": 1836}, {"turnout": 80.2, "year": 1840}, {"turnout": 78.9, "year": 1844}, {"turnout": 72.7, "year": 1848}, {"turnout": 69.6, "year": 1852}, {"turnout": 78.9, "year": 1856}, {"turnout": 81.2, "year": 1860}, {"turnout": 73.8, "year": 1864}, {"turnout": 78.1, "year": 1868}, {"turnout": 71.3, "year": 1872}, {"turnout": 81.8, "year": 1876}, {"turnout": 79.4, "year": 1880}, {"turnout": 77.5, "year": 1884}, {"turnout": 79.3, "year": 1888}, {"turnout": 74.7, "year": 1892}, {"turnout": 79.3, "year": 1896}, {"turnout": 73.2, "year": 1900}, {"turnout": 65.2, "year": 1904}, {"turnout": 65.4, "year": 1908}, {"turnout": 58.8, "year": 1912}, {"turnout": 61.6, "year": 1916}, {"turnout": 49.2, "year": 1920}, {"turnout": 48.9, "year": 1924}, {"turnout": 56.9, "year": 1928}, {"voter": 39817, "eligible": 75768, "turnout": 52.6, "year": 1932}, {"voter": 45647, "eligible": 80174, "turnout": 56.9, "year": 1936}, {"voter": 49815, "eligible": 84728, "turnout": 58.8, "year": 1940}, {"voter": 48026, "eligible": 85654, "turnout": 56.1, "year": 1944}, {"voter": 48834, "eligible": 95573, "turnout": 51.1, "year": 1948}, {"voter": 61552, "eligible": 99929, "turnout": 61.6, "year": 1952}, {"voter": 62027, "eligible": 104515, "turnout": 59.3, "year": 1956}, {"voter": 68836, "eligible": 109672, "turnout": 62.8, "year": 1960}, {"voter": 70098, "eligible": 114090, "turnout": 61.4, "year": 1964}, {"voter": 73027, "eligible": 120285, "turnout": 60.7, "year": 1968}, {"voter": 77625, "eligible": 140777, "turnout": 55.1, "year": 1972}, {"voter": 81603, "eligible": 152308, "turnout": 53.6, "year": 1976}, {"voter": 86497, "eligible": 163945, "turnout": 52.8, "year": 1980}, {"voter": 92655, "eligible": 173995, "turnout": 53.3, "year": 1984}, {"voter": 91587, "eligible": 181956, "turnout": 50.3, "year": 1988}, {"voter": 104600, "eligible": 189493, "turnout": 55.2, "year": 1992}, {"voter": 96390, "eligible": 196789, "turnout": 49.0, "year": 1996}, {"voter": 105594, "eligible": 209787, "turnout": 50.3, "year": 2000}, {"voter": 122349, "eligible": 219553, "turnout": 55.7, "year": 2004}, {"voter": 131407, "eligible": 229945, "turnout": 57.1, "year": 2008}, {"voter": 129235, "eligible": 235248, "turnout": 54.9, "year": 2012}, {"voter": 138847, "eligible": 251107, "turnout": 55.3, "year": 2016}]

let voterTurnoutChart = echarts.init(document.getElementById('voter-turnout'))

let xAxisData = voterData.map(function(d) {
  return d.year.toString();
});

let turnoutRate = voterData.map(function(d) {
  return d.turnout;
})

let option = {
  title: {
        text: '美国大选投票率',
        subtext: '实际投票人数/满足投票资格人数',
        left: 'center'
    },
    tooltip: {
        trigger: 'axis'
    },
    grid: {
        bottom: '3%',
        containLabel: true
    },
    dataZoom: {

    },
    toolbox: {
        feature: {
            saveAsImage: {}
        }
    },
    xAxis: {
        type: 'category',
        boundaryGap: false,
        data: xAxisData
    },
    yAxis: {
        type: 'value',
        name: '百分比'
    },
    series: [
        {
            name:'投票率',
            type:'line',
            data: turnoutRate,
            markLine: {
              label: {
                normal: {
                  position: 'start'
                }
              },
              data: [
                {
                  name: '投票率50%',
                  yAxis: 50
                },
                {
                  name: '平均投票率',
                  type: 'average'
                }
              ]
            },
            markArea: {
              label: {
                position: 'bottom'
              },
              data: [
                [{
                  name: '妇女选举权逐步得到认可',
                  xAxis: '1896'
                },{
                  xAxis: '1924'
                }]
              ],
            }
        }
      ]
}

voterTurnoutChart.setOption(option);

window.onresize = function() {
  voterTurnoutChart.resize({
    width: 'auto',
    height: 'auto'
  });
}

</script>
