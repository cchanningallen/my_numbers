### PEW PEW PEW LASERS


### Setup

workout (:name, :date)
|
  - collector (type: ['amrap', 'rounds', 'standard'], :parent _id, :workout_id)
    |
      - activity (:name, :mod, :quantity, :unit, :weight, :parent_id)
    |
      - collector
    |   |
    |     - activity
    |
      - activity
