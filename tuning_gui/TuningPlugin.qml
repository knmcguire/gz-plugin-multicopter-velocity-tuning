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



GridLayout {
  columns: 2
  columnSpacing: 10
  Layout.minimumWidth: 350
  Layout.minimumHeight: 500
  anchors.fill: parent
  anchors.leftMargin: 10
  anchors.rightMargin: 10

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
      to: 1.0
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
      to: 1.0
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
      from: 0.01
      value: 0.03
      to: 1.0
      stepSize: 0.01
      onMoved: function() {
        TuningPlugin.vel_z = value;
      }
  }
}

