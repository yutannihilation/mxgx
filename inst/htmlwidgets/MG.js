HTMLWidgets.widget({

  name: 'MG',

  type: 'output',

  initialize: function(el, width, height) {

    return {
      width : width,
      height : height
    }

  },

  renderValue: function(el, x, instance) {
    var params = $.extend({}, x.data_options, x.layout_options);
    
    // convert date string to Date object
    params.data = MG.convert.date( HTMLWidgets.dataframeToD3(params.data), "date" );
    
    params.target = '#' + el.id;
    
    MG.data_graphic(params);
  },

  resize: function(el, width, height, instance) {

  }

});
