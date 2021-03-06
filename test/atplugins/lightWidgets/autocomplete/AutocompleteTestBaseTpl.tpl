/*
 * Copyright 2012 Amadeus s.a.s.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

{Template {
    $classpath : "test.atplugins.lightWidgets.autocomplete.AutocompleteTestBaseTpl",
    $hasScript : true,
    $wlibs : {
      "light" : "atplugins.lightWidgets.LightWidgetLib"
    }
}}

    {macro main()}

      {@light:AutoComplete {
          id: "autocomplete",
          suggestionsTemplate: "atplugins.lightWidgets.autocomplete.AutocompleteTemplate",
          bind: {
            value: {
                inside: data,
                to: "value"
            }
          },
          on : {
             change : onChange
          },
          resourcesHandler: getAirLinesHandler(),
          attributes: {
            classList: ["dropdown"]
          },
          placeholder: data.cfg.placeholder,
          autoselect: true,
          preselect: data.cfg.preselect
      } /}

      <a href="#" {id "blurElement"/}>Link</a>
      <span {id "clickOutsideElement"/}>span</a>

    {/macro}

{/Template}
