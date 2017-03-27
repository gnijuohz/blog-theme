<script type="text/javascript">

let comparisonChart = echarts.init(document.getElementById('comparison'))

let comparisonOption = {
    title: {
        text: 'Rating Difference (Douban - IMDB)',
        subtext: 'Oscar nominated movies 2012-2017',
        sublink: 'https://github.com/gnijuohz/nominated-taste',
        left: 'center'
    },
    tooltip : {
        trigger: 'axis',
        axisPointer : {
            type : 'shadow'
        },
        confine: true,
        formatter: function (params, ticket, callback) {
          let {year, doubanScore, doubanNum, imdbScore, imdbNum} = params[0].data;
          return `Douban - IMDB: ${params[0].value} <br>Douban: ${doubanScore}, rated by ${doubanNum} users </br>IMDB: ${imdbScore}, rated by ${imdbNum} users`;
        }
    },
    grid: {
        top: 80,
        bottom: 30
    },
    xAxis: {
        type : 'value',
        position: 'top',
        splitLine: {lineStyle:{type:'dashed'}},
    },
    yAxis: {
        type : 'category',
        axisLine: {show: false},
        axisLabel: {show: false},
        axisTick: {show: false},
        splitLine: {show: false},
        data : [
  "The Artist (2012)",
  "The Help (2012)",
  "The Descendants (2012)",
  "Hugo (2012)",
  "Midnight in Paris (2012)",
  "Moneyball (2012)",
  "The Tree of Life (2012)",
  "War Horse (2012)",
  "Extremely Loud & Incredibly Close (2012)",
  "Argo (2013)",
  "Lincoln (2013)",
  "Zero Dark Thirty (2013)",
  "Les Misérables (2013)",
  "Life of Pi (2013)",
  "Silver Linings Playbook (2013)",
  "Django Unchained (2013)",
  "Amour (2013)",
  "Beasts of the Southern Wild (2013)",
  "12 Years a Slave (2014)",
  "Gravity (2014)",
  "American Hustle (2014)",
  "Dallas Buyers Club (2014)",
  "Her (2014)",
  "Philomena (2014)",
  "The Wolf of Wall Street (2014)",
  "Captain Phillips (2014)",
  "Nebraska (2014)",
  "Birdman (2015)",
  "American Sniper (2015)",
  "Boyhood (2015)",
  "The Grand Budapest Hotel (2015)",
  "The Imitation Game (2015)",
  "Selma (2015)",
  "The Theory of Everything (2015)",
  "Whiplash (2015)",
  "Spotlight (2016)",
  "The Revenant (2016)",
  "The Big Short (2016)",
  "The Martian (2016)",
  "Mad Max: Fury Road (2016)",
  "Room (2016)",
  "Bridge of Spies (2016)",
  "Brooklyn (2016)",
  "Moonlight (2017)",
  "La La Land (2017)",
  "Manchester by the Sea (2017)",
  "Hidden Figures (2017)",
  "Fences (2017)",
  "Arrival (2017)",
  "Hacksaw Ridge (2017)",
  "Hell or High Water (2017)",
  "Lion (2017)"
]
    },
    series : [
      {
        name:'Rating difference',
        type:'bar',
        stack: '总量',
        label: {
            normal: {
                show: true,
                formatter: '{b}'
            }
        },
        data: [
          {
            "year": 2012,
            "doubanScore": 8.4,
            "imdbScore": 7.9,
            "doubanNum": 72851,
            "imdbNum": 197086,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.5
          },
          {
            "year": 2012,
            "doubanScore": 8.8,
            "imdbScore": 8.1,
            "doubanNum": 49962,
            "imdbNum": 336056,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.7
          },
          {
            "year": 2012,
            "doubanScore": 7.5,
            "imdbScore": 7.3,
            "doubanNum": 36479,
            "imdbNum": 209791,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.2
          },
          {
            "year": 2012,
            "doubanScore": 7.6,
            "imdbScore": 7.5,
            "doubanNum": 125177,
            "imdbNum": 255731,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2012,
            "doubanScore": 8.2,
            "imdbScore": 7.7,
            "doubanNum": 160246,
            "imdbNum": 314746,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.5
          },
          {
            "year": 2012,
            "doubanScore": 8.2,
            "imdbScore": 7.6,
            "doubanNum": 57838,
            "imdbNum": 293846,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2012,
            "doubanScore": 6.9,
            "imdbScore": 6.8,
            "doubanNum": 29113,
            "imdbNum": 141655,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2012,
            "doubanScore": 8,
            "imdbScore": 7.2,
            "doubanNum": 149649,
            "imdbNum": 120903,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.8
          },
          {
            "year": 2012,
            "doubanScore": 7.6,
            "imdbScore": 6.9,
            "doubanNum": 23315,
            "imdbNum": 84936,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.7
          },
          {
            "year": 2013,
            "doubanScore": 8.2,
            "imdbScore": 7.7,
            "doubanNum": 158974,
            "imdbNum": 473818,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.5
          },
          {
            "year": 2013,
            "doubanScore": 7.7,
            "imdbScore": 7.4,
            "doubanNum": 32028,
            "imdbNum": 204911,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.3
          },
          {
            "year": 2013,
            "doubanScore": 7.6,
            "imdbScore": 7.4,
            "doubanNum": 32992,
            "imdbNum": 223737,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.2
          },
          {
            "year": 2013,
            "doubanScore": 8.5,
            "imdbScore": 7.6,
            "doubanNum": 200474,
            "imdbNum": 253743,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.9
          },
          {
            "year": 2013,
            "doubanScore": 9,
            "imdbScore": 7.9,
            "doubanNum": 544453,
            "imdbNum": 463324,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 1.1
          },
          {
            "year": 2013,
            "doubanScore": 7.7,
            "imdbScore": 7.8,
            "doubanNum": 133104,
            "imdbNum": 556922,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.1
          },
          {
            "year": 2013,
            "doubanScore": 8.5,
            "imdbScore": 8.4,
            "doubanNum": 235264,
            "imdbNum": 1016753,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2013,
            "doubanScore": 8.5,
            "imdbScore": 7.9,
            "doubanNum": 44961,
            "imdbNum": 73841,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2013,
            "doubanScore": 7.6,
            "imdbScore": 7.3,
            "doubanNum": 18441,
            "imdbNum": 72299,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.3
          },
          {
            "year": 2014,
            "doubanScore": 7.8,
            "imdbScore": 8.1,
            "doubanNum": 92296,
            "imdbNum": 474166,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.3
          },
          {
            "year": 2014,
            "doubanScore": 7.8,
            "imdbScore": 7.8,
            "doubanNum": 231817,
            "imdbNum": 611517,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": 0
          },
          {
            "year": 2014,
            "doubanScore": 6.6,
            "imdbScore": 7.3,
            "doubanNum": 59993,
            "imdbNum": 373158,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.7
          },
          {
            "year": 2014,
            "doubanScore": 8.6,
            "imdbScore": 8,
            "doubanNum": 147533,
            "imdbNum": 346590,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2014,
            "doubanScore": 8.3,
            "imdbScore": 8,
            "doubanNum": 203348,
            "imdbNum": 381644,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.3
          },
          {
            "year": 2014,
            "doubanScore": 8.4,
            "imdbScore": 7.6,
            "doubanNum": 17728,
            "imdbNum": 79593,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.8
          },
          {
            "year": 2014,
            "doubanScore": 7.6,
            "imdbScore": 8.2,
            "doubanNum": 129717,
            "imdbNum": 843682,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.6
          },
          {
            "year": 2014,
            "doubanScore": 8.1,
            "imdbScore": 7.8,
            "doubanNum": 56543,
            "imdbNum": 340271,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.3
          },
          {
            "year": 2014,
            "doubanScore": 8.6,
            "imdbScore": 7.7,
            "doubanNum": 30252,
            "imdbNum": 94734,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.9
          },
          {
            "year": 2015,
            "doubanScore": 7.9,
            "imdbScore": 7.8,
            "doubanNum": 134043,
            "imdbNum": 429302,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2015,
            "doubanScore": 7.4,
            "imdbScore": 7.3,
            "doubanNum": 52136,
            "imdbNum": 346438,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2015,
            "doubanScore": 8.5,
            "imdbScore": 7.9,
            "doubanNum": 125441,
            "imdbNum": 281993,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2015,
            "doubanScore": 8.7,
            "imdbScore": 8.1,
            "doubanNum": 273623,
            "imdbNum": 517533,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2015,
            "doubanScore": 8.5,
            "imdbScore": 8.1,
            "doubanNum": 221429,
            "imdbNum": 520872,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.4
          },
          {
            "year": 2015,
            "doubanScore": 7.2,
            "imdbScore": 7.5,
            "doubanNum": 4448,
            "imdbNum": 65976,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.3
          },
          {
            "year": 2015,
            "doubanScore": 8.1,
            "imdbScore": 7.7,
            "doubanNum": 102242,
            "imdbNum": 291790,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.4
          },
          {
            "year": 2015,
            "doubanScore": 8.6,
            "imdbScore": 8.5,
            "doubanNum": 202343,
            "imdbNum": 458318,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2016,
            "doubanScore": 8.7,
            "imdbScore": 8.1,
            "doubanNum": 104092,
            "imdbNum": 253594,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2016,
            "doubanScore": 7.8,
            "imdbScore": 8,
            "doubanNum": 186877,
            "imdbNum": 482586,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.2
          },
          {
            "year": 2016,
            "doubanScore": 8.3,
            "imdbScore": 7.8,
            "doubanNum": 69846,
            "imdbNum": 234797,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.5
          },
          {
            "year": 2016,
            "doubanScore": 8.4,
            "imdbScore": 8,
            "doubanNum": 274744,
            "imdbNum": 540131,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.4
          },
          {
            "year": 2016,
            "doubanScore": 8.5,
            "imdbScore": 8.1,
            "doubanNum": 188770,
            "imdbNum": 613702,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.4
          },
          {
            "year": 2016,
            "doubanScore": 8.8,
            "imdbScore": 8.2,
            "doubanNum": 122330,
            "imdbNum": 210043,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2016,
            "doubanScore": 8,
            "imdbScore": 7.6,
            "doubanNum": 49203,
            "imdbNum": 210481,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.4
          },
          {
            "year": 2016,
            "doubanScore": 7.7,
            "imdbScore": 7.5,
            "doubanNum": 44277,
            "imdbNum": 91411,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.2
          },
          {
            "year": 2017,
            "doubanScore": 7.2,
            "imdbScore": 7.8,
            "doubanNum": 28640,
            "imdbNum": 78038,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.6
          },
          {
            "year": 2017,
            "doubanScore": 8.4,
            "imdbScore": 8.5,
            "doubanNum": 225224,
            "imdbNum": 191529,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.1
          },
          {
            "year": 2017,
            "doubanScore": 8.6,
            "imdbScore": 8,
            "doubanNum": 62406,
            "imdbNum": 90124,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.6
          },
          {
            "year": 2017,
            "doubanScore": 8.6,
            "imdbScore": 7.9,
            "doubanNum": 12887,
            "imdbNum": 50281,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.7
          },
          {
            "year": 2017,
            "doubanScore": 6.8,
            "imdbScore": 7.4,
            "doubanNum": 2525,
            "imdbNum": 29349,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.6
          },
          {
            "year": 2017,
            "doubanScore": 7.8,
            "imdbScore": 8.1,
            "doubanNum": 140123,
            "imdbNum": 262071,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.3
          },
          {
            "year": 2017,
            "doubanScore": 8.7,
            "imdbScore": 8.3,
            "doubanNum": 226454,
            "imdbNum": 148988,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.4
          },
          {
            "year": 2017,
            "doubanScore": 7.8,
            "imdbScore": 7.7,
            "doubanNum": 21786,
            "imdbNum": 95254,
            "itemStyle": {
              "normal": {
                "color": "#1f9432"
              }
            },
            "label": {
              "normal": {
                "position": "right"
              }
            },
            "value": 0.1
          },
          {
            "year": 2017,
            "doubanScore": 7.3,
            "imdbScore": 8,
            "doubanNum": 6349,
            "imdbNum": 55868,
            "itemStyle": {
              "normal": {
                "color": "#dba506"
              }
            },
            "label": {
              "normal": {
                "position": "left"
              }
            },
            "value": -0.7
          }
        ]
    }
    ]
}

comparisonChart.setOption(comparisonOption)

let ratedNumberChart = echarts.init(document.getElementById('ratedNumber'));
let ratedNumOption = {
    title: {
        text: 'Number of Times a Movie Was Rated by Douban Users',
        subtext: 'Oscar nominated movies 2012-2017',
        sublink: 'https://github.com/gnijuohz/nominated-taste',
        left: 'center'
    },
    tooltip : {
        trigger: 'axis',
        axisPointer : {
            type : 'shadow'
        },
        confine: true,
        formatter: function (params, ticket, callback) {
          let year = params[0].data.year;
          return `${params[0].name}<br>${params[0].data.doubanScore}, rated by ${params[0].value} Douban users`;
        }
    },
    grid: {
        top: 80,
        bottom: 30
    },
    xAxis: {
        type : 'value',
        position: 'top',
        splitLine: {lineStyle:{type:'dashed'}},
    },
    yAxis: {
        type : 'category',
        axisLine: {show: false},
        axisLabel: {show: false},
        axisTick: {show: false},
        splitLine: {show: false},
        data : [ 'Midnight in Paris (2012)',
          'War Horse (2012)',
          'Hugo (2012)',
          'The Artist (2012)',
          'Moneyball (2012)',
          'The Help (2012)',
          'The Descendants (2012)',
          'The Tree of Life (2012)',
          'Extremely Loud & Incredibly Close (2012)',
          'Life of Pi (2013)',
          'Django Unchained (2013)',
          'Les Misérables (2013)',
          'Argo (2013)',
          'Silver Linings Playbook (2013)',
          'Amour (2013)',
          'Zero Dark Thirty (2013)',
          'Lincoln (2013)',
          'Beasts of the Southern Wild (2013)',
          'Gravity (2014)',
          'Her (2014)',
          'Dallas Buyers Club (2014)',
          'The Wolf of Wall Street (2014)',
          '12 Years a Slave (2014)',
          'American Hustle (2014)',
          'Captain Phillips (2014)',
          'Nebraska (2014)',
          'Philomena (2014)',
          'The Grand Budapest Hotel (2015)',
          'The Imitation Game (2015)',
          'Whiplash (2015)',
          'Birdman (2015)',
          'Boyhood (2015)',
          'The Theory of Everything (2015)',
          'American Sniper (2015)',
          'Selma (2015)',
          'The Martian (2016)',
          'Mad Max: Fury Road (2016)',
          'The Revenant (2016)',
          'Room (2016)',
          'Spotlight (2016)',
          'The Big Short (2016)',
          'Bridge of Spies (2016)',
          'Brooklyn (2016)',
          'Hacksaw Ridge (2017)',
          'La La Land (2017)',
          'Arrival (2017)',
          'Manchester by the Sea (2017)',
          'Moonlight (2017)',
          'Hell or High Water (2017)',
          'Hidden Figures (2017)',
          'Lion (2017)',
          'Fences (2017)'
        ]
    },
    series : [
      {
        name:'Rating difference',
        type:'bar',
        stack: '总量',
        label: {
            normal: {
                show: true,
                position: 'right',
                formatter: '{b}'
            }
        },
        "itemStyle": {
          "normal": {
            "color": "#1f9432"
          }
        },
        data:[ { value: 160246, doubanScore: 8.2 },
        { value: 149649, doubanScore: 8 },
        { value: 125177, doubanScore: 7.6 },
        { value: 72851, doubanScore: 8.4 },
        { value: 57838, doubanScore: 8.2 },
        { value: 49962, doubanScore: 8.8 },
        { value: 36479, doubanScore: 7.5 },
        { value: 29113, doubanScore: 6.9 },
        { value: 23315, doubanScore: 7.6 },
        { value: 544453, doubanScore: 9 },
        { value: 235264, doubanScore: 8.5 },
        { value: 200474, doubanScore: 8.5 },
        { value: 158974, doubanScore: 8.2 },
        { value: 133104, doubanScore: 7.7 },
        { value: 44961, doubanScore: 8.5 },
        { value: 32992, doubanScore: 7.6 },
        { value: 32028, doubanScore: 7.7 },
        { value: 18441, doubanScore: 7.6 },
        { value: 231817, doubanScore: 7.8 },
        { value: 203348, doubanScore: 8.3 },
        { value: 147533, doubanScore: 8.6 },
        { value: 129717, doubanScore: 7.6 },
        { value: 92296, doubanScore: 7.8 },
        { value: 59993, doubanScore: 6.6 },
        { value: 56543, doubanScore: 8.1 },
        { value: 30252, doubanScore: 8.6 },
        { value: 17728, doubanScore: 8.4 },
        { value: 273623, doubanScore: 8.7 },
        { value: 221429, doubanScore: 8.5 },
        { value: 202343, doubanScore: 8.6 },
        { value: 134043, doubanScore: 7.9 },
        { value: 125441, doubanScore: 8.5 },
        { value: 102242, doubanScore: 8.1 },
        { value: 52136, doubanScore: 7.4 },
        { value: 4448, doubanScore: 7.2 },
        { value: 274744, doubanScore: 8.4 },
        { value: 188770, doubanScore: 8.5 },
        { value: 186877, doubanScore: 7.8 },
        { value: 122330, doubanScore: 8.8 },
        { value: 104092, doubanScore: 8.7 },
        { value: 69846, doubanScore: 8.3 },
        { value: 49203, doubanScore: 8 },
        { value: 44277, doubanScore: 7.7 },
        { value: 226454, doubanScore: 8.7 },
        { value: 225224, doubanScore: 8.4 },
        { value: 140123, doubanScore: 7.8 },
        { value: 62406, doubanScore: 8.6 },
        { value: 28640, doubanScore: 7.2 },
        { value: 21786, doubanScore: 7.8 },
        { value: 12887, doubanScore: 8.6 },
        { value: 6349, doubanScore: 7.3 },
        { value: 2525, doubanScore: 6.8 } ]
      }]
}
ratedNumberChart.setOption(ratedNumOption)
</script>
