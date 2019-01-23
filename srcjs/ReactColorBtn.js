
import React, { Component } from 'react';
import reactCSS from 'reactcss';
import { AlphaPicker, BlockPicker, ChromePicker, CirclePicker, CompactPicker, GithubPicker, HuePicker, MaterialPicker, PhotoshopPicker, SketchPicker, SliderPicker, SwatchesPicker, TwitterPicker } from 'react-color';

class ReactColorBtn extends React.Component {

  state = {
    displayColorPicker: false,
    color: this.props.color,
  };

  setInputValueStart = () => {
    window.Shiny.setInputValue('{this.props.inputId}', '{this.props.color}');
  }

  handleClick = () => {
    this.setState({ displayColorPicker: !this.state.displayColorPicker })
  };

  handleClose = () => {
    this.setState({ displayColorPicker: false })
  };

  handleChange = (color) => {
    this.setState({ color: color.hex })
  };

  render() {
    const styles = reactCSS({
      'default': {
        color: {
          width: '20px',
          height: '20px',
          borderRadius: '50%',
          'background-color': `${ this.state.color }`,
          display: 'inline-block',
          'margin-left': '10px',
          'vertical-align': 'bottom',
        },
        popover: {
          position: 'absolute',
          zIndex: '2',
        },
        cover: {
          position: 'fixed',
          top: '5px',
          right: '0px',
          bottom: '0px',
          left: '0px',
        },
      },
    });
    const { children } = this.props;

    const childrenWithProps = React.Children.map(children, child =>
      React.cloneElement(child, { onChange: this.handleChange })
    );
    return (
      <span class="form-group shiny-input-container shiny-input-container-inline">
        <button onClick={ this.handleClick } class="btn btn-default">{this.props.label}<span style={ styles.color }></span></button>
        { this.state.displayColorPicker ? <div style={ styles.popover }>
          <div style={ styles.cover } onClick={ this.handleClose }/>
          {childrenWithProps}
        </div> : null }
      </span>
    )
  }
}

export default ReactColorBtn
