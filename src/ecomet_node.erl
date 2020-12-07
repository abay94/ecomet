%%----------------------------------------------------------------
%% Copyright (c) 2020 Faceplate
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%----------------------------------------------------------------
-module(ecomet_node).

%%=================================================================
%%	SERVICE API
%%=================================================================
-export([
  get_unique_id/0
]).

%%===========================================================================
%% Ecomet object behaviour
%%===========================================================================
-export([
  on_create/1,
  on_edit/1,
  on_delete/1
]).


%%=================================================================
%%	SERVICE API
%%=================================================================
% Unique id of the node
get_unique_id()->
  get_unique_id(node()).
get_unique_id(Node)->
  ecomet_schema:get_node_id(Node).

%%=================================================================
%%	Ecomet object behaviour
%%=================================================================
on_create(_Object)->
  ok.

on_edit(_Object)->

  ok.

on_delete(_Object)->
  ok.
