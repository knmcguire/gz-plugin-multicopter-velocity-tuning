# Gazebo Harmonic Plugin to tune the Multicopter velocity controller

Still work in progress!

Made for Ubuntu 22.04 and Gazebo Harmonic


## Build and source the gui plugin

    cd tuning_gui
    mkdir build
    cd build
    cmake ..
    make
    export GZ_GUI_PLUGIN_PATH=`pwd`


## Build and source the multicopter control tunable plugin

    cd multicopter_control_tunable
    mkdir build
    cd build
    cmake ..
    make 
    export GZ_SIM_SYSTEM_PLUGIN_PATH=`pwd`
