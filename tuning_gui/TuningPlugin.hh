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

#ifndef GZ_SIM_TUNINGPLUGIN_HH_
#define GZ_SIM_TUNINGPLUGIN_HH_

#include <gz/sim/gui/GuiSystem.hh>
#include <gz/msgs.hh>
#include <gz/transport.hh>
class TuningPlugin : public gz::sim::GuiSystem
{
  Q_OBJECT

  Q_PROPERTY(double vel_x MEMBER vel_x NOTIFY TuningGainsChanged);
  Q_PROPERTY(double vel_y MEMBER vel_y NOTIFY TuningGainsChanged);
  Q_PROPERTY(double vel_z MEMBER vel_z NOTIFY TuningGainsChanged);
  Q_PROPERTY(double att_roll MEMBER att_roll NOTIFY TuningGainsChanged);
  Q_PROPERTY(double att_pitch MEMBER att_pitch NOTIFY TuningGainsChanged);
  Q_PROPERTY(double att_yaw MEMBER att_yaw NOTIFY TuningGainsChanged);
  Q_PROPERTY(double ang_rate_roll MEMBER ang_rate_roll NOTIFY TuningGainsChanged);
  Q_PROPERTY(double ang_rate_pitch MEMBER ang_rate_pitch NOTIFY TuningGainsChanged);
  Q_PROPERTY(double ang_rate_yaw MEMBER ang_rate_yaw NOTIFY TuningGainsChanged);

  public: TuningPlugin();
  public: ~TuningPlugin() override;

  public: void LoadConfig(const tinyxml2::XMLElement *_pluginElem) override;

  public: void Update(const gz::sim::UpdateInfo &_info,
      gz::sim::EntityComponentManager &_ecm) override;

  signals: void TuningGainsChanged();
  public: gz::transport::Node node;

  private: double vel_x{0.03}, vel_y{0.03}, vel_z{0.03};
  private: double att_roll{0.02}, att_pitch{0.02}, att_yaw{0.02};
  private: double ang_rate_roll{0.005}, ang_rate_pitch{0.005}, ang_rate_yaw{0.005};
  private: void publishDoubleMessage(const std::string& topicname, double value);

  };

#endif
