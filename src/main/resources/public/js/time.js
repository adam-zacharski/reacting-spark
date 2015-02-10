var TimeGist = React.createClass({
  getInitialState: function() {
    return {
      currentTime: ''
    };
  },

  componentDidMount: function() {
    $.get("/time", function(result){
      this.setState({
        currentTime: new Date(parseInt(result)).toString()
      });
    }.bind(this));
  },

  render: function() {
    return (
        <h2>
        {this.state.currentTime}
        </h2>
    );
  }
});

React.render(
  <TimeGist />,
  document.getElementById('current_time')
);
