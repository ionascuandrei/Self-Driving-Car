# Self Driving Car
| Parts      | Approach |
| ----------- | ----------- |
| Project, runs      | All project-related content like xpr file, run results, run settings, source sets are (re)created by proj/create_project.tcl. All generated content will be placed into proj/, but only create_project.tcl is versioned. An example is provided in the template and must be manually updated whenever there are changes that must be versioned.      |
| Block design   | Only present in project based on block design. Exported as a tcl script to src/bd/. Create_project.tcl should call the bd tcl to re-create the block design during project re-generation.       |
| Design sources | VHDL, Verilog sources are versioned in src/hdl. All files found there are automatically added to the project by create_project.tcl upon re-generation. |
| Design constraints | XDC constraints are versioned in src/constraints. All files found there are automatically added to the project by create_project.tcl upon re-generation. |
| SDK projects | Application projects are versioned in sdk/. |
| SDK BSPs | The mss file of base support packages are versioned in sdk/<subfolder>. The generated sources are not versioned and their re-generation must be manually requested after import. |
| SDK workspace | SDK workspace is targeted to sdk/. However, the workspace itself is not versioned and must be re-created manually by importing all the application projects and BSPs in sdk/. |
| Custom IP definitions | Versioned in repo/local. Other libraries, like [vivado-library](https://github.com/Digilent/vivado-library/) can be included as Git submodules in repo/.|

 

# Workflows
## Save
 - Build bitstream
 - Export hardware definition to hw_handoff/
 - Export block design tcl to src/bd/
 - Manually edit create_project.tcl to include any changes in project or run settings
 - Commit, push

## (Re)Load
 - Browse to proj/. Remove ALL generated, non-versioned content with cleanup.cmd. Anything not saved with the Save workflow will be deleted
 - Open Vivado GUI, Tools, Run Script..., select proj/create_project.tcl.
 - Watch for errors in the console. If none, the project should be re-created and opened.

## SDK
 - Upon fresh clone the workspace needs to be re-created. Choose Import, Existing Projects into Workspace, sdk/ as root directory. Tick projects, BSPs and HW platforms you wish to import.
 - If you have custom repositories for drivers or libs, add them with Xilinx, Repositories, Local Repositories.
 - Import new hardware changes (if any) by right-clicking on the imported hw platform and choosing Change Hardware Platform Specification. Choose the hdf file in hw_handoff/.
 - Right-click the BSP an choose Re-generate BSP sources.
 - Choose Project/Build All

## Folder Organization
For illustrative purposes the current organization of the repository is shown below.

 ```
<project_name>
|--hw_handoff
|  `--<top_level>.hdf
|--petalinux
|  |--project-spec
|  |--.petalinux
|  |--config.project
|  `--Makefile
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
