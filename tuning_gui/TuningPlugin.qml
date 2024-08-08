/*
 * Copyright (C) 2020 Open Source Robotics Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/
import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import QtQuick.Controls.Styles 1.4
import gz.gui 1.0

ColumnLayout {
  Layout.minimumWidth: 200
  Layout.minimumHeight: 400
  Layout.margins: 1
  anchors.fill: parent
  focus: true

GridLayout {
    Layout.fillWidth: true
    Layout.margins: 1
    columns: 4

  Label {
    text: 'vel x'
  }
  Label {
    text: TuningPlugin.vel_x
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.01
      value: 0.03
      to: 2.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.vel_x = value;
      }
  }
  Label {
    text: 'vel y'
  }
  Label {
    text: TuningPlugin.vel_y
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.01
      value: 0.03
      to: 2.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.vel_y = value;
      }
  }
  Label {
    text: 'vel z'
  }
  Label {
    text: TuningPlugin.vel_z
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.03
      value: 0.03
      to: 2.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.vel_z = value;
      }
  }
  Label {
    text: 'att_roll'
  }
  Label {
    text: TuningPlugin.att_roll
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.01
      value: 0.02
      to: 10.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.att_roll = value;
      }
  }
  Label {
    text: 'att_pitch'
  }
  Label {
    text: TuningPlugin.att_pitch
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.01
      value: 0.02
      to: 10.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.att_pitch = value;
      }
  }
  Label {
    text: 'att_yaw'
  }
  Label {
    text: TuningPlugin.att_yaw
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.01
      value: 0.02
      to: 10.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.att_yaw = value;
      }
  }
  Label {
    text: 'ang_rate_roll'
  }
  Label {
    text: TuningPlugin.ang_rate_roll
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.001
      value: 0.005
      to: 1.0
      stepSize: 0.005
      onMoved: function() {
        TuningPlugin.ang_rate_roll = value;
      }
  }
  Label {
    text: 'ang_rate_pitch'
  }
  Label {
    text: TuningPlugin.ang_rate_pitch
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.001
      value: 0.005
      to: 1.0
      stepSize: 0.005
      onMoved: function() {
        TuningPlugin.ang_rate_pitch = value;
      }
  }
  Label {
    text: 'ang_rate_yaw'
  }
  Label {
    text: TuningPlugin.ang_rate_yaw
  }
  Slider {
      Layout.columnSpan: 2
      from: 0.001
      value: 0.005
      to: 1.0
      stepSize: 0.005
      onMoved: function() {
        TuningPlugin.ang_rate_yaw = value;
      }
  }
}
}
