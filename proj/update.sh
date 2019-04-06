#!/bin/bash
proj_name='SDCar'
vivado_proj_name='SDCarVivado'

main_folder='../..'
origin_dir='..'

hardware_definition=$main_folder/$proj_name/$vivado_proj_name/$vivado_proj_name.sdk/design_1_wrapper.hdf

block_design_tcl=$main_folder/$proj_name/$vivado_proj_name/design_1.tcl

proj_ip=$main_folder/$proj_name/$vivado_proj_name/$vivado_proj_name.srcs/sources_1/bd/design_1/ip

constraints=$main_folder/$proj_name/$vivado_proj_name/$vivado_proj_name.srcs/constrs_1/imports/new/zyboZ20_master.xdc

sdk=$main_folder/$proj_name/$vivado_proj_name/$vivado_proj_name.sdk/*


#1.Export Hardware Definition to Default
#Move hardware definition to hw_handoff
cp $hardware_definition $origin_dir/hw_handoff

#2.Export Block Design to default
#Move Block design tcl to src/bd/
cp $block_design_tcl $origin_dir/src/bd/

#Copy IP folder from srcs folder
cp -R $proj_ip $origin_dir/src/

#Copy constraints file
cp $constraints $origin_dir/src/constraints/

#Copy Hardware Platform in SDK folder
cp $origin_dir/hw_handoff/design_1_wrapper.hdf $origin_dir/sdk/

#Copy SDK folder
cp -R $sdk $origin_dir/sdk/
