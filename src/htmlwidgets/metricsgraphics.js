HTMLWidgets.widget({

  name: 'metricsgraphics',

  type: 'output',

  initialize: function(el, width, height) {

    return {
      // TODO: add instance fields as required
    }

  },

  renderValue: function(el, data, instance) {
    // convert data format to D3-friendly
    var data_d3 = HTMLWidgets.dataframeToD3(data);
    
    // convert date string to Date object
    var data_mg = MG.convert.date(data_d3, "date");
    
    MG.data_graphic({
        data: data_mg,
        target: '#' + el.id
    });

  },

  resize: function(el, width, height, instance) {

  }

});
