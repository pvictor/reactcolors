
import * as PickerComponents from 'react-color';
/*import { SketchPicker, BlockPicker  } from 'react-color';*/

import ReactColorBtn from './ReactColorBtn';

import { reactWidget } from 'reactR';

PickerComponents.ReactColorBtn = ReactColorBtn;
reactWidget('react_color', 'output', {ReactColorBtn: ReactColorBtn});
