'use strict'

import React, { Component } from 'react';
import { ChromePicker } from 'react-color'

class ReactColorBtn extends React.Component {
  state = {
    displayColorPicker: false,
  };

  handleClick = () => {
    this.setState({ displayColorPicker: !this.state.displayColorPicker })
  };

  handleClose = () => {
    this.setState({ displayColorPicker: false })
  };

  render() {
    const popover = {
      position: 'absolute',
      zIndex: '2',
    }
    const cover = {
      position: 'fixed',
      top: '0px',
      right: '0px',
      bottom: '0px',
      left: '0px',
    }
    return (
      <span class="form-group shiny-input-container shiny-input-container-inline">
        <button onClick={ this.handleClick } class="btn btn-default">{this.props.label}</button>
        { this.state.displayColorPicker ? <div style={ popover }>
          <div style={ cover } onClick={ this.handleClose }/>
          <ChromePicker />
        </div> : null }
      </span>
    )
  }
}

export default ReactColorBtn
