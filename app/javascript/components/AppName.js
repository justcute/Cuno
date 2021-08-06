import React from "react"
import PropTypes from "prop-types"
class AppName extends React.Component {
  render () {
    return (
      <React.Fragment>
        <h1>{this.props.name} - {this.props.direction}</h1>
      </React.Fragment>
    );
  }
}

AppName.propTypes = {
  name: PropTypes.string,
  direction: PropTypes.string
};
export default AppName
