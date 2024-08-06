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

#include <gz/plugin/Register.hh>
#include <gz/sim/components/Name.hh>
#include <gz/sim/components/World.hh>
#include <gz/sim/EntityComponentManager.hh>
#include <gz/sim/gui/GuiEvents.hh>

#include "TuningPlugin.hh"

TuningPlugin::TuningPlugin() = default;

TuningPlugin::~TuningPlugin() = default;

void TuningPlugin::LoadConfig(const tinyxml2::XMLElement * /*_pluginElem*/)
{
  if (this->title.empty())
    this->title = "Tuning plugin";
}

void TuningPlugin::Update(const gz::sim::UpdateInfo & /*_info*/,
    gz::sim::EntityComponentManager &_ecm)
{
  this->TuningGainsChanged();
  this->publishDoubleMessage("/vel_gain_x", this->vel_x);
  this->publishDoubleMessage("/vel_gain_y", this->vel_y);
  this->publishDoubleMessage("/vel_gain_z", this->vel_z);


}

  void TuningPlugin::publishDoubleMessage(const std::string& topicname, double value)
  {
    gz::msgs::Double msg;
    msg.set_data(value);

    auto topic = gz::transport::TopicUtils::AsValidTopic(topicname);
    gzmsg << "slider " << value << std::endl;

    auto pub = this->node.Advertise<gz::msgs::Double>(topic);
    pub.Publish(msg);
  }

GZ_ADD_PLUGIN(TuningPlugin,
                    gz::gui::Plugin)
