%% Copyright 2012 Opscode, Inc. All Rights Reserved.
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
%%

-record(chef_solr_query, {
          query_string :: string(),
          filter_query :: string(),
          search_provider = solr :: 'solr' | 'cloudsearch',
          search_module = solr_provider :: 'solr_provider' | 'cloudsearch_provider',
          start :: integer(),
          rows :: integer(),
          sort :: string(),
          index :: 'node'
                 | 'role'
                 | 'client'
                 | 'environment'
                 | {'data_bag', binary()}}).
