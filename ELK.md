# ELK

  - Distributed Tracing
  - ProcessId / ClientId / SpanId to trace among services

#### Elastic search
  - Agrregation
  - Sub-aggregation
  - Terms
  - Index management
    - rollover-policy
      - 30 / 60 days for long term retention
      - 7 days for short term
    - Index phase ... hot ... cold

- Kibana
  - Saved search
  - apply filters
  - Kibana Query Language (KQL)
    - KQL has a different set of features than the Lucene query syntax
    - status_code:400 401 404
    - text:quick brown fox
    - text:"quick brown fox"
    - response:200 or message:EAD
    - response:(200 or 404)
    - response:200 and (message:RWA or extension:LR)
    - response:200 and message:RWA or extension:LR
    - not response:200
    - response:200 and not (message:RWA or message:LR)
    - account_number >= 100 and items_sold <= 200
    - @timestamp < "2021-01-02T21:55:59" 
    - @timestamp < "2021-01"
    - machine.os:win*
    - "Trade rejected for"
    - level.keyword: ERROR


- Visualizations

- Grafana

- Beats
  - FileBeat
  - MetricBeat
  - HeartBeat