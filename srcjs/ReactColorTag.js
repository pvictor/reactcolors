
import React, { Component } from 'react';
import { AlphaPicker, BlockPicker, ChromePicker, CirclePicker, CompactPicker, GithubPicker, HuePicker, MaterialPicker, PhotoshopPicker, SketchPicker, SliderPicker, SwatchesPicker, TwitterPicker } from 'react-color';

class ReactColorTag extends React.Component {
  render() {
    return (
      <div class="form-group shiny-input-container shiny-input-container-inline">
        <label><b>{this.props.label}</b></label><br></br>
        {this.props.children}
      </div>
    )
  }
}

export default ReactColorTag
