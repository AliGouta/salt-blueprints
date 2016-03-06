{% from 'hadoop/map.jinja' import hadoop with context %}


cluster-template-creation:

  file.managed:
    - name: /tmp/blueprint-5groups.json
    - source: salt://hadoop/deploy/files/blueprint-5groups.json
    - template: jinja
    - mode: 0640
    - user: root
    - group: root
    - makedirs: True

  file.managed:
    - name: /tmp/creation_template.json
    - source: salt://hadoop/deploy/files/creation_template.json
    - template: jinja
    - mode: 0640
    - user: root
    - group: root
    - makedirs: True