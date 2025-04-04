___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Real Boolean",
  "description": "Return a boolean value true/false",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "RADIO",
    "name": "value",
    "displayName": "Value",
    "radioItems": [
      {
        "value": true,
        "displayValue": "true"
      },
      {
        "value": false,
        "displayValue": "false"
      }
    ],
    "simpleValueType": true,
    "defaultValue": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

return data.value ? true: false;


___TESTS___

scenarios:
- name: 'true'
  code: |-
    const mockData = {
      value: true
    };

    let variableResult = runCode(mockData);

    assertThat(variableResult).isNotEqualTo(undefined);
    assertThat(variableResult).isEqualTo(true);
- name: 'false'
  code: |-
    const mockData = {
      value: false
    };

    let variableResult = runCode(mockData);

    assertThat(variableResult).isNotEqualTo(undefined);
    assertThat(variableResult).isEqualTo(false);


___NOTES___

Created on 4/4/2025, 3:08:49 PM

