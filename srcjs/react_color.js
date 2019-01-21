
import * as PickerComponents from 'react-color';

/*import { SketchPicker, BlockPicker  } from 'react-color';*/

import ReactColorBtn from './ReactColorBtn';
import ReactColorTag from './ReactColorTag';

import { reactWidget } from 'reactR';

PickerComponents.ReactColorBtn = ReactColorBtn;
PickerComponents.ReactColorTag = ReactColorTag;
reactWidget('react_color', 'output', PickerComponents);
