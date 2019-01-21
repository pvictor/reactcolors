
import React, { Component } from 'react';
import { AlphaPicker, BlockPicker, ChromePicker, CirclePicker, CompactPicker, GithubPicker, HuePicker, MaterialPicker, PhotoshopPicker, SketchPicker, SliderPicker, SwatchesPicker, TwitterPicker } from 'react-color';

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
      top: '4px',
      right: '0px',
      bottom: '0px',
      left: '0px',
    }
    return (
      <span class="form-group shiny-input-container shiny-input-container-inline">
        <button onClick={ this.handleClick } class="btn btn-default">{this.props.label}</button>
        { this.state.displayColorPicker ? <div style={ popover }>
          <div style={ cover } onClick={ this.handleClose }/>
          {this.props.children}
        </div> : null }
      </span>
    )
  }
}

export default ReactColorBtn
