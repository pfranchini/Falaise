# -*- mode: conf-unix; -*-
# calorimeter_module_common.geom

#################################################################################
[name="calorimeter_scin_block_front.model" type="geomtools::simple_shaped_model"]
shape_type        : string  = "box"
x                 : real as length = 256.0 mm
y                 : real as length = 256.0 mm
z                 : real as length =  31.0 mm
material.ref      : string  = "ENVINET_PS_scintillator"
visibility.hidden : boolean = 0
visibility.color  : string  = "blue"

# Sensitive detector category:
sensitive.category : string = "calorimeter_SD"


#####################################################################################################
[name="calorimeter_scin_block_front_gas_curtain.model" type="geomtools::simple_shaped_model"]
shape_type        : string  = "box"
x                 : real as length = 259.0 mm
y                 : real as length = 259.0 mm
z                 : real as length =  25.0 um
material.ref      : string  = "std::nylon"
visibility.hidden : boolean = 0
visibility.color  : string  = "magenta"

[name="calorimeter_scin_block_front_wrapper_front_stock.model" type="geomtools::simple_shaped_model"]
shape_type        : string  = "box"
x                 : real as length = 259.0 mm
y                 : real as length = 259.0 mm
z                 : real as length = 0.968 mm
### FM+MB 2016-01-12: TO BE CHANGED in next release:
### z             : real    =   0.96XXX mm
material.ref      : string  = "tracking_gas"
visibility.hidden : boolean = 0
visibility.color  : string  = "cyan"


########################################################################################################
[name="calorimeter_scin_block_front_wrapper_front_wrapping.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   = 258.0 mm
y                 : real as length   = 258.0 mm
z                 : real as length   =  12.0 um
material.ref      : string = "std::mylar"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


#########################################################################################
[name="calorimeter_scin_block_front_wrapper_front.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "z"
stacked.number_of_items : integer = 3
stacked.model_0         : string  = "calorimeter_scin_block_front_wrapper_front_wrapping.model"
stacked.label_0         : string  = "wrapping"
stacked.model_1         : string  = "calorimeter_scin_block_front_wrapper_front_stock.model"
stacked.label_1         : string  = "stock"
stacked.model_2         : string  = "calorimeter_scin_block_front_gas_curtain.model"
stacked.label_2         : string  = "curtain"

visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"

mapping.daughter_id.wrapping : string = "[calorimeter_wrapper]"
mapping.daughter_id.curtain  : string = "[calorimeter_curtain]"


#########################################################################################################
[name="calorimeter_scin_block_front_wrapper_side_x_external.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   =  12.0 um
y                 : real as length   = 256.0 mm
z                 : real as length   =  31.0 mm
material.ref      : string  = "std::mylar"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


#########################################################################################################
[name="calorimeter_scin_block_front_wrapper_side_x_internal.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   =   1.0 mm
y                 : real as length   = 256.0 mm
z                 : real as length   =  31.0 mm
material.ref      : string = "std::ptfe"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


###############################################################################################
[name="calorimeter_scin_block_front_wrapper_side_x_left.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "x"
stacked.number_of_items : integer = 2
stacked.model_0         : string  = "calorimeter_scin_block_front_wrapper_side_x_external.model"
stacked.label_0         : string  = "external_wrapping"
stacked.model_1         : string  = "calorimeter_scin_block_front_wrapper_side_x_internal.model"
stacked.label_1         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


################################################################################################
[name="calorimeter_scin_block_front_wrapper_side_x_right.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "x"
stacked.number_of_items : integer = 2
stacked.model_1         : string  = "calorimeter_scin_block_front_wrapper_side_x_external.model"
stacked.label_1         : string  = "external_wrapping"
stacked.model_0         : string  = "calorimeter_scin_block_front_wrapper_side_x_internal.model"
stacked.label_0         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


#########################################################################################################
[name="calorimeter_scin_block_front_wrapper_side_y_external.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   = 256.0 mm
y                 : real as length   =  12.0 um
z                 : real as length   =  31.0 mm
material.ref      : string = "std::mylar"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


#########################################################################################################
[name="calorimeter_scin_block_front_wrapper_side_y_internal.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   = 256.0 mm
y                 : real as length   =   1.0 mm
z                 : real as length   =  31.0 mm
material.ref      : string = "std::ptfe"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


#################################################################################################
[name="calorimeter_scin_block_front_wrapper_side_y_bottom.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "y"
stacked.number_of_items : integer =  2
stacked.model_0         : string  = "calorimeter_scin_block_front_wrapper_side_y_external.model"
stacked.label_0         : string  = "external_wrapping"
stacked.model_1         : string  = "calorimeter_scin_block_front_wrapper_side_y_internal.model"
stacked.label_1         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


##############################################################################################
[name="calorimeter_scin_block_front_wrapper_side_y_top.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "y"
stacked.number_of_items : integer =  2
stacked.model_1         : string  = "calorimeter_scin_block_front_wrapper_side_y_external.model"
stacked.label_1         : string  = "external_wrapping"
stacked.model_0         : string  = "calorimeter_scin_block_front_wrapper_side_y_internal.model"
stacked.label_0         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


############################################################################################
[name="calorimeter_wrapped_scin_block_front.model" type="geomtools::surrounded_boxed_model"]
material.ref           : string  = "tracking_gas"

surrounded.model       : string  = "calorimeter_scin_block_front.model"
surrounded.label       : string  = "scin_block"

surrounded.top_model   : string  = "calorimeter_scin_block_front_wrapper_front.model"
surrounded.top_label   : string  = "top_wrapper"

surrounded.left_model  : string  = "calorimeter_scin_block_front_wrapper_side_y_bottom.model"
surrounded.left_label  : string  = "left_wrapper"

surrounded.right_model : string  = "calorimeter_scin_block_front_wrapper_side_y_top.model"
surrounded.right_label : string  = "right_wrapper"

surrounded.front_model : string  = "calorimeter_scin_block_front_wrapper_side_x_right.model"
surrounded.front_label : string  = "front_wrapper"

surrounded.back_model  : string  = "calorimeter_scin_block_front_wrapper_side_x_left.model"
surrounded.back_label  : string  = "back_wrapper"

visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"

mapping.daughter_id.scin_block : string = "[calorimeter_block:part=1]"


########################################################################################################
[name="calorimeter_scin_block_back_wrapper_side_x_external.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   =   2.0 um
y                 : real as length   = 240.0 mm
z                 : real as length   = 163.0 mm
material.ref      : string  = "std::mylar"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


########################################################################################################
[name="calorimeter_scin_block_back_wrapper_side_x_internal.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   =   1.0 mm
y                 : real as length   = 240.0 mm
z                 : real as length   = 163.0 mm
material.ref      : string  = "std::ptfe"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


##############################################################################################
[name="calorimeter_scin_block_back_wrapper_side_x_left.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "x"
stacked.number_of_items : integer =  2
stacked.model_0         : string  = "calorimeter_scin_block_back_wrapper_side_x_external.model"
stacked.label_0         : string  = "external_wrapping"
stacked.model_1         : string  = "calorimeter_scin_block_back_wrapper_side_x_internal.model"
stacked.label_1         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


###############################################################################################
[name="calorimeter_scin_block_back_wrapper_side_x_right.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "x"
stacked.number_of_items : integer =  2
stacked.model_1         : string  = "calorimeter_scin_block_back_wrapper_side_x_external.model"
stacked.label_1         : string  = "external_wrapping"
stacked.model_0         : string  = "calorimeter_scin_block_back_wrapper_side_x_internal.model"
stacked.label_0         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


########################################################################################################
[name="calorimeter_scin_block_back_wrapper_side_y_external.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   = 240.0 mm
y                 : real as length   =  12.0 um
z                 : real as length   = 163.0 mm
material.ref      : string = "std::mylar"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


########################################################################################################
[name="calorimeter_scin_block_back_wrapper_side_y_internal.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   = 240.0 mm
y                 : real as length   =   1.0 mm
z                 : real as length   = 163.0 mm
material.ref      : string = "std::ptfe"
visibility.hidden : boolean = 0
visibility.color  : string  = "green"


################################################################################################
[name="calorimeter_scin_block_back_wrapper_side_y_bottom.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "y"
stacked.number_of_items : integer = 2
stacked.model_0         : string  = "calorimeter_scin_block_back_wrapper_side_y_external.model"
stacked.label_0         : string  = "external_wrapping"
stacked.model_1         : string  = "calorimeter_scin_block_back_wrapper_side_y_internal.model"
stacked.label_1         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


#############################################################################################
[name="calorimeter_scin_block_back_wrapper_side_y_top.model" type="geomtools::stacked_model"]
material.ref            : string  = "tracking_gas"
stacked.axis            : string  = "y"
stacked.number_of_items : integer = 2
stacked.model_1         : string  = "calorimeter_scin_block_back_wrapper_side_y_external.model"
stacked.label_1         : string  = "external_wrapping"
stacked.model_0         : string  = "calorimeter_scin_block_back_wrapper_side_y_internal.model"
stacked.label_0         : string  = "internal_wrapping"
visibility.hidden         : boolean = 0
visibility.hidden_envelop : boolean = 1
visibility.color          : string  = "grey"


################################################################################################
[name="calorimeter_module_internal_support_plate.model" type="geomtools::plate_with_hole_model"]
x                 : real as length    = 240.0 mm
y                 : real as length    = 240.0 mm
z                 : real as length    =   3.0 mm
r_hole            : real as length    = 111.0 mm
material.ref      : string  = "std::iron"
visibility.hidden : boolean = 0
visibility.color  : string  = "red"


################################################################################################
[name="calorimeter_module_vertical_shielding_plate.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   =   3.0 mm
y                 : real as length   = 251   mm
z                 : real as length   = 466.0 mm
material.ref      : string = "std::iron"
visibility.hidden : boolean = 0
visibility.color  : string  = "red"


##################################################################################################
[name="calorimeter_module_horizontal_shielding_plate.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length  = 245   mm
y                 : real as length  =   3.0 mm
z                 : real as length  = 466.0 mm
material.ref      : string = "std::iron"
visibility.hidden : boolean = 0
visibility.color  : string  = "red"


####################################################################################
[name="calorimeter_module_spacer_plate.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   =   3.0 mm
y                 : real as length   = 230.0 mm
z                 : real as length   = 420.0 mm
material.ref      : string = "std::plexiglass"
visibility.hidden : boolean = 0
visibility.color  : string  = "blue"


##########################################################################################
[name="calorimeter_module_closing_back_plate.model" type="geomtools::simple_shaped_model"]
shape_type        : string = "box"
x                 : real as length   = 245.0 mm
y                 : real as length   = 245.0 mm
z                 : real as length   =   6.0 mm
material.ref      : string = "std::plexiglass"
visibility.hidden : boolean = 0
visibility.color  : string  = "blue"

# end of calorimeter_module_common.geom