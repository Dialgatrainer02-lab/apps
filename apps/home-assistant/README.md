alias: Set Light to Color
description: ""
triggers:
  - trigger: conversation
    command:
      - "[set|change] light to {color}"
conditions: []
actions:
  - variables:
      color: "{{ trigger.slots.color | default('white') }}"
  - action: light.turn_on
    data:
      color_name: "{{ color }}"
    target:
      entity_id: light.h60a1_0016
  - set_conversation_response: setting light to {{ color }}
mode: single



alias: Set Light Brightness
description: ""
triggers:
  - trigger: conversation
    command:
      - "[set|change] [light level|brightness] to {brightness}"
conditions: []
actions:
  - variables:
      brightness: "{{ trigger.slots.brightness | default(50) }}"
  - action: light.turn_on
    data:
      brightness_pct: "{{ brightness }}"
    target:
      entity_id: light.h60a1_0016
  - set_conversation_response: setting light level to {{ brightness }}
mode: single



alias: light toggle
description: ""
triggers:
  - trigger: conversation
    command: toggle the light
conditions: []
actions:
  - action: light.toggle
    metadata: {}
    data: {}
    target:
      entity_id: light.h60a1_0016
mode: single
