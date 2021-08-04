import React from "react"
import PropTypes from "prop-types"
class AppName extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div class="container my-5">
        <h1>{this.props.name} - {this.props.direction} portal</h1>
        </div>
      </React.Fragment>
    );
  }
}

AppName.propTypes = {
  name: PropTypes.string,
  direction: PropTypes.string
};
export default AppName
