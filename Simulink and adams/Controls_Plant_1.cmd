!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
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
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
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
   model_name = Contorl_Automatic
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Contorl_Automatic.Force_Carry  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Contorl_Automatic.Position_M  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Contorl_Automatic.VARIABLE_3  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Contorl_Automatic.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+011  &
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
   default_coordinate_system = .Contorl_Automatic.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Contorl_Automatic.ground.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.ground.MARKER_13  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Contorl_Automatic.ground  &
   material_type = .Contorl_Automatic.steel
!
part attributes  &
   part_name = .Contorl_Automatic.ground  &
   name_visibility = off
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.ground
!
part create rigid_body name_and_position  &
   part_name = .Contorl_Automatic.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, -0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_1  &
   adams_id = 1  &
   location = 0.2692582404, -158.1985905136, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.cm  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.1  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_6  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.1  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_8  &
   adams_id = 8  &
   location = 0.4, 90.0, 0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_10  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_11  &
   adams_id = 11  &
   location = 0.4, 90.0, 0.1  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_2.MARKER_12  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.1  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Contorl_Automatic.PART_2  &
   mass = 0.5  &
   center_of_mass_marker = .Contorl_Automatic.PART_2.cm  &
   ixx = 3.7704833333  &
   iyy = 3.7704833333  &
   izz = 1.0401333333  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Contorl_Automatic.PART_2.BOX_1  &
   adams_id = 1  &
   corner_marker = .Contorl_Automatic.PART_2.MARKER_1  &
   diag_corner_coords = 0.5, 0.2, 0.2
!
part attributes  &
   part_name = .Contorl_Automatic.PART_2  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.ground
!
part create rigid_body name_and_position  &
   part_name = .Contorl_Automatic.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Contorl_Automatic.PART_3.MARKER_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_3.MARKER_3  &
   adams_id = 3  &
   location = 0.3, 90.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_3.cm  &
   adams_id = 15  &
   location = 0.3, 90.0, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_3.MARKER_4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Contorl_Automatic.PART_3.MARKER_9  &
   adams_id = 9  &
   location = 0.3, 90.0000000001, 0.0  &
   orientation = 315.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Contorl_Automatic.PART_3  &
   mass = 0.5  &
   center_of_mass_marker = .Contorl_Automatic.PART_3.cm  &
   ixx = 6.0E-003  &
   iyy = 6.0E-003  &
   izz = 6.0E-003  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .Contorl_Automatic.PART_3.LINK_2  &
   i_marker = .Contorl_Automatic.PART_3.MARKER_2  &
   j_marker = .Contorl_Automatic.PART_3.MARKER_3  &
   width = 3.5E-002  &
   depth = 1.75E-002
!
part attributes  &
   part_name = .Contorl_Automatic.PART_3  &
   color = GREEN  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .Contorl_Automatic.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .Contorl_Automatic.PART_3.MARKER_4  &
   j_marker_name = .Contorl_Automatic.PART_2.MARKER_5
!
constraint attributes  &
   constraint_name = .Contorl_Automatic.JOINT_1  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .Contorl_Automatic.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .Contorl_Automatic.PART_2.MARKER_6  &
   j_marker_name = .Contorl_Automatic.ground.MARKER_7
!
constraint attributes  &
   constraint_name = .Contorl_Automatic.JOINT_2  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .Contorl_Automatic.SFORCE_1  &
   adams_id = 1  &
   type_of_freedom = translational  &
   i_marker_name = .Contorl_Automatic.PART_2.MARKER_12  &
   j_marker_name = .Contorl_Automatic.ground.MARKER_13  &
   action_only = on  &
   function = ""
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Contorl_Automatic.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.input_channels  &
   object_value = .Contorl_Automatic.Force_Carry
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.output_channels  &
   object_value =   &
      .Contorl_Automatic.Position_M,  &
      .Contorl_Automatic.VARIABLE_3
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.file_name  &
   string_value = "Controls_Plant_1"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.host  &
   string_value = "DESKTOP-F0CGOOD"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .Contorl_Automatic.Controls_Plant_1.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .Contorl_Automatic.Controls_Plant_1
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.ground
!
geometry create shape force  &
   force_name = .Contorl_Automatic.SFORCE_1_force_graphic_1  &
   adams_id = 2  &
   force_element_name = .Contorl_Automatic.SFORCE_1  &
   applied_at_marker_name = .Contorl_Automatic.PART_2.MARKER_12
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9.80665  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create angle  &
   measure_name = .Contorl_Automatic.Theta  &
   first_point = .Contorl_Automatic.PART_3.MARKER_9  &
   middle_point = .Contorl_Automatic.PART_2.MARKER_10  &
   last_point = .Contorl_Automatic.PART_2.MARKER_11
!
data_element attributes  &
   data_element_name = .Contorl_Automatic.Theta  &
   color = WHITE
!
measure create object  &
   measure_name = .Contorl_Automatic.Posision_X  &
   from_first = no  &
   object = .Contorl_Automatic.PART_2  &
   characteristic = cm_position  &
   component = x_component
!
data_element attributes  &
   data_element_name = .Contorl_Automatic.Posision_X  &
   color = WHITE
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Contorl_Automatic._model  &
   string_value = ".Contorl_Automatic"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Contorl_Automatic.Force_Carry  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Contorl_Automatic.Position_M  &
   function = ".Contorl_Automatic.Posision_X"
!
data_element modify variable  &
   variable_name = .Contorl_Automatic.VARIABLE_3  &
   function = ".Contorl_Automatic.Theta"
!
force modify direct single_component_force  &
   single_component_force_name = .Contorl_Automatic.SFORCE_1  &
   function = "VARVAL(.Contorl_Automatic.Force_Carry)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Contorl_Automatic.Controls_Plant_1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape block  &
   block_name = .Contorl_Automatic.PART_2.BOX_1  &
   diag_corner_coords =   &
      (500.0mm),  &
      (200.0mm),  &
      (20.0cm)
!
marker modify  &
   marker_name = .Contorl_Automatic.PART_3.MARKER_3  &
   location =   &
      (LOC_RELATIVE_TO({30.0cm, 0.0, 0.0}, .Contorl_Automatic.PART_3.MARKER_2))  &
   relative_to = .Contorl_Automatic.PART_3
!
defaults coordinate_system  &
   default_coordinate_system = .Contorl_Automatic.ground
!
geometry modify shape link  &
   link_name = .Contorl_Automatic.PART_3.LINK_2  &
   width = (35.0mm)  &
   depth = (17.5mm)
!
material modify  &
   material_name = .Contorl_Automatic.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
geometry modify shape force  &
   force_name = .Contorl_Automatic.SFORCE_1_force_graphic_1  &
   applied_at_marker_name = (.Contorl_Automatic.SFORCE_1.i)
!
model display  &
   model_name = Contorl_Automatic
