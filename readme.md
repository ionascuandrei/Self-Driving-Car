# Self Driving Car
| Parts      | Approach |
| ----------- | ----------- |
| Project, runs      | All project-related content like xpr file, run results, run settings, source sets are (re)created by proj/create_project.tcl. All generated content will be placed into proj/, but only create_project.tcl is versioned. An example is provided in the template and must be manually updated whenever there are changes that must be versioned.      |
| Block design   | Only present in project based on block design. Exported as a tcl script to src/bd/. Create_project.tcl should call the bd tcl to re-create the block design during project re-generation.       |
| Design constraints | XDC constraints are versioned in src/constraints. All files found there are automatically added to the project by create_project.tcl upon re-generation. |
| SDK projects | Application projects are versioned in sdk/. |
| SDK workspace | SDK workspace is targeted to sdk/. However, the workspace itself is not versioned and must be re-created manually by importing all the application projects and BSPs in sdk/. |

 

# Workflows
## Set Project Path
 - Change create_path in create_project.tcl with desired path for Vivado build

## Create Vivado Project
 - Open Vivado 2017.4
 - Tools > Run TCL Script : select /proj/create_project.tcl
 - Generate Bitstream
 - Export Hardware
 
## Create Petalinux Project
 - Make sure you use Petalinux 2017.4
 - Move in /petalinux/ directory
 - Use bash command: petalinux-build
 - Set in Makefile BOOT_PARTITION and ROOTFS_PARTITION with the corresponding path to the SD Card
   Note: SD Card should have a partition for boot and one for root's files system

## Folder Tree
For illustrative purposes the current organization of the repository is shown below.

 ```
<project_name>
|--hw_handoff
|  `--<top_level>.hdf
|--petalinux
|  |--project-spec
|  |--.petalinux
|  `--config.project
|--proj
|  |--cleanup.cmd
|  |--cleanup.sh
|  `--create_project.tcl
|--repo
|  |--ip
|  `--vivado-boards
|--sdk
|  |--<hw_platform>
|  |  |--.cproject
|  |  |--.project
|  |  `--.sdkproject
|  `--<Every SDK Project>
|     |--src
|     |  |--<whatever>
|     |  |  `--<whatever>.c
|     |  |--<main>.c
|     |  `--lscript.ld
|     |--.cproject
|     `--.project
|--src
|  |--bd
|  |  `--<bd_name>.tcl
|  |--hdl
|  |--constraints
|  |  `--<board>.xdc
|  |--ip
|--.gitignore
|--.git
`--readme.md
