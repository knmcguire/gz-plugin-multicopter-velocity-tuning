# Gazebo Harmonic Plugin to tune the Multicopter velocity controller

**Still work in progress! Works very limited"**

Made for Ubuntu 22.04 and Gazebo Harmonic


## Build and source the gui plugin

Build the gui tuning plugin

    cd tuning_gui
    mkdir build
    cd build
    cmake ..
    make

Source it from the same build folder or use the absolutele path

    export GZ_GUI_PLUGIN_PATH=`pwd`


## Build and source the multicopter control tunable plugin

Build the gui multicopter control tunable  plugin


    cd multicopter_control_tunable
    mkdir build
    cd build
    cmake ..
    make 

Source it from the same build folder or use the absolutele path

    export GZ_SIM_SYSTEM_PLUGIN_PATH=`pwd`


## Add multicopter plugin to sdf file

Replace the regular MulticopterControl with

    <plugin filename="MulticopterControlTunable" name="gz::sim::v8::systems::MulticopterVelocityControlTunable">

Run the sim with

    gz sim -v 4 -r YOURCOPTER.sdf

Make sure that the plugins of above are sourced in the same terminal

## Change the standard tuning values


This plugin was used to tune the crazyflie model of which the source file can be found here: https://github.com/bitcraze/crazyflie-simulation/blob/main/simulator_files/gazebo/crazyflie/model.sdf

If you are using a different model, You'll need to change the tuning values in 'TuningPlugin.qml' 'TuningPlugin.hh' and 'MulticopterVelocityControlTunable.hh' to align with the lee controller variables in your sdf. It's a bit dirty but I wrote these plugins just to tune something quickly.
