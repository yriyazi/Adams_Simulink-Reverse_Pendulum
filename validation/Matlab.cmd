!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cylindrical  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 50.0  &
   spacing_for_grid = 1000.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = MODEL_1
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .MODEL_1.Force_of_carry  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.ThetaD  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.Theta  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.ThetaDD  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.POSITION  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.VelocityC  &
   adams_id = 12  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .MODEL_1.ACCELERATIONC  &
   adams_id = 13  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .MODEL_1.steel  &
   adams_id = 1  &
   density = 7.801E-006  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.ground.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.ground.MARKER_16  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.ground  &
   material_type = .MODEL_1.steel
!
part attributes  &
   part_name = .MODEL_1.ground  &
   name_visibility = off
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_1.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, -100.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_1  &
   adams_id = 1  &
   location = 403.1128874149, -172.8749836511, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.cm  &
   adams_id = 9  &
   location = 0.0, 0.0, 100.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 100.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.0, 100.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_11  &
   adams_id = 11  &
   location = 500.0, 90.0, 100.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_12  &
   adams_id = 12  &
   location = 500.0, 90.0, 100.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_13  &
   adams_id = 13  &
   location = 0.0, 0.0, 100.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_2.MARKER_15  &
   adams_id = 15  &
   location = 0.0, 0.0, 100.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.PART_2  &
   material_type = .MODEL_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .MODEL_1.PART_2.BOX_1  &
   adams_id = 1  &
   corner_marker = .MODEL_1.PART_2.MARKER_1  &
   diag_corner_coords = 800.0, 100.0, 200.0
!
part attributes  &
   part_name = .MODEL_1.PART_2  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
part create rigid_body name_and_position  &
   part_name = .MODEL_1.PART_3  &
   adams_id = 3  &
   location = 2.5452393931E-011, 0.0, 0.0  &
   orientation = 5.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_3  &
   adams_id = 3  &
   location = 600.0, 90.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.cm  &
   adams_id = 10  &
   location = 600.0, 90.0, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_4  &
   adams_id = 4  &
   location = 600.0, 90.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .MODEL_1.PART_3.MARKER_14  &
   adams_id = 14  &
   location = 600.0, 90.0, 0.0  &
   orientation = 355.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .MODEL_1.PART_3  &
   mass = 36.6140837134  &
   center_of_mass_marker = .MODEL_1.PART_3.cm  &
   ixx = 5.7816271552E+005  &
   iyy = 5.7777572539E+005  &
   izz = 1.3135648843E+005  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .MODEL_1.PART_3.LINK_2  &
   i_marker = .MODEL_1.PART_3.MARKER_2  &
   j_marker = .MODEL_1.PART_3.MARKER_3  &
   width = 40.0  &
   depth = 20.0
!
geometry create shape ellipsoid  &
   ellipsoid_name = .MODEL_1.PART_3.ELLIPSOID_3  &
   adams_id = 2  &
   center_marker = .MODEL_1.PART_3.MARKER_4  &
   x_scale_factor = 200.0  &
   y_scale_factor = 200.0  &
   z_scale_factor = 200.0
!
part attributes  &
   part_name = .MODEL_1.PART_3  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .MODEL_1.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .MODEL_1.PART_3.MARKER_5  &
   j_marker_name = .MODEL_1.PART_2.MARKER_6
!
constraint attributes  &
   constraint_name = .MODEL_1.JOINT_1  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .MODEL_1.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .MODEL_1.PART_2.MARKER_7  &
   j_marker_name = .MODEL_1.ground.MARKER_8
!
constraint attributes  &
   constraint_name = .MODEL_1.JOINT_2  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_1  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .MODEL_1.PART_2.MARKER_15  &
   j_marker_name = .MODEL_1.ground.MARKER_16  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .MODEL_1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=10.0 step_size=1.0E-002 model_name=.MODEL_1"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .MODEL_1.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, -100.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .MODEL_1.CART_PEND  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.input_channels  &
   object_value = .MODEL_1.Force_of_carry
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.output_channels  &
   object_value =   &
      .MODEL_1.ThetaD,  &
      .MODEL_1.Theta,  &
      .MODEL_1.ThetaDD,  &
      .MODEL_1.POSITION,  &
      .MODEL_1.VelocityC,  &
      .MODEL_1.ACCELERATIONC
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.file_name  &
   string_value = "Controls_Plant_1"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.host  &
   string_value = "DESKTOP-F0CGOOD"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.Controls_Plant_1.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .MODEL_1.Controls_Plant_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.input_channels  &
   object_value = .MODEL_1.Force_of_carry
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.output_channels  &
   object_value =   &
      .MODEL_1.ThetaD,  &
      .MODEL_1.Theta,  &
      .MODEL_1.ThetaDD,  &
      .MODEL_1.POSITION,  &
      .MODEL_1.VelocityC,  &
      .MODEL_1.ACCELERATIONC
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.file_name  &
   string_value = "Matlab"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.host  &
   string_value = "DESKTOP-F0CGOOD"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .MODEL_1.CART_PEND.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .MODEL_1.CART_PEND
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
geometry create shape force  &
   force_name = .MODEL_1.SFORCE_1_force_graphic_1  &
   adams_id = 3  &
   force_element_name = .MODEL_1.SFORCE_1  &
   applied_at_marker_name = .MODEL_1.PART_2.MARKER_15
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9806.65  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create angle  &
   measure_name = .MODEL_1.MEA_ANGLE_1  &
   first_point = .MODEL_1.PART_2.MARKER_12  &
   middle_point = .MODEL_1.PART_2.MARKER_13  &
   last_point = .MODEL_1.PART_3.MARKER_14  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.MEA_ANGLE_1  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.POS  &
   from_first = no  &
   object = .MODEL_1.PART_2  &
   characteristic = cm_position  &
   component = x_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.POS  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.VELO  &
   from_first = no  &
   object = .MODEL_1.PART_2  &
   characteristic = cm_velocity  &
   component = x_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.VELO  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.ACCE  &
   from_first = no  &
   object = .MODEL_1.PART_2  &
   characteristic = cm_acceleration  &
   component = x_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.ACCE  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.ThetaDot  &
   from_first = no  &
   object = .MODEL_1.PART_3  &
   characteristic = cm_angular_velocity  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.ThetaDot  &
   color = WHITE
!
measure create object  &
   measure_name = .MODEL_1.ThetaDotDot  &
   from_first = no  &
   object = .MODEL_1.PART_3  &
   characteristic = cm_angular_acceleration  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .MODEL_1.ThetaDotDot  &
   color = WHITE
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .MODEL_1._model  &
   string_value = ".MODEL_1"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .MODEL_1.Force_of_carry  &
   function = "0"
!
data_element modify variable  &
   variable_name = .MODEL_1.ThetaD  &
   function = ".MODEL_1.ThetaDot"
!
data_element modify variable  &
   variable_name = .MODEL_1.Theta  &
   function = ".MODEL_1.MEA_ANGLE_1"
!
data_element modify variable  &
   variable_name = .MODEL_1.ThetaDD  &
   function = ".MODEL_1.ThetaDotDot"
!
data_element modify variable  &
   variable_name = .MODEL_1.POSITION  &
   function = ".MODEL_1.POS"
!
data_element modify variable  &
   variable_name = .MODEL_1.VelocityC  &
   function = ".MODEL_1.VELO"
!
data_element modify variable  &
   variable_name = .MODEL_1.ACCELERATIONC  &
   function = ".MODEL_1.ACCE"
!
force modify direct single_component_force  &
   single_component_force_name = .MODEL_1.SFORCE_1  &
   function = "VARVAL(.MODEL_1.Force_of_carry)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.Controls_Plant_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .MODEL_1.CART_PEND
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .MODEL_1.PART_2.BOX_1  &
   diag_corner_coords =   &
      (80.0cm),  &
      (10.0cm),  &
      (20.0cm)
!
marker modify  &
   marker_name = .MODEL_1.PART_3.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({60.0cm, 0.0, 0.0}, .MODEL_1.PART_3.MARKER_2))  &
   relative_to = .MODEL_1.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .MODEL_1.ground
!
geometry modify shape link  &
   link_name = .MODEL_1.PART_3.LINK_2  &
   width = (4.0cm)  &
   depth = (2.0cm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .MODEL_1.PART_3.ELLIPSOID_3  &
   x_scale_factor = (2 * 10.0cm)  &
   y_scale_factor = (2 * 10.0cm)  &
   z_scale_factor = (2 * 10.0cm)
!
material modify  &
   material_name = .MODEL_1.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
geometry modify shape force  &
   force_name = .MODEL_1.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.MODEL_1.SFORCE_1.i)
!
model display  &
   model_name = MODEL_1
