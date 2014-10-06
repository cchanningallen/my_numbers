## PEW PEW PEW LASERS

## Work
### Todos
  * Client: create ActivityType model
  * Client: create ActivityTypes collection
  * Client: create Activity model
  * Client: create Activities collection
  * Client: create ActivityGroup model (default type == 'standard')
  * Client: create WorkoutFeatures collection
  * Server: create ActivityGroup, Activity, Datapoint models + associations
  * Server: return Workouts' entire nested bundle for show/index
  * Client: create DataPoint model
  * Client: create DataPoints collections


### Todone
  * Server: create ActivityType API class
  * Server: create ActivityType API

## Front-End Structure
```
Root (model)
|- :DATA_POINT_CATEGORY_OPTIONS (array of possible categories for
|    ActivityType's :data_point_categories)
|
+- ActivityTypes (collection)
|   |
|   +- ActivityType (model)
|       |- :name
|       |- :mod_options (array of possible modifications)
|       |- :categories (array of relevant tags - 'lift', 'skill',
|       |    'metcon', etc. for (a) creating datapoints, and (b) showing
|       |    correct options in form)
|       +
|
+- Workouts (collection)
|  |
|  +- Workout (model)
|     |- :name
|     |- :date
|     |- :notes
|     |- :scoreType ('time', 'rounds', ...)
|     |- :score (string, parsed into correct format using scoreType)
|     |
|     +- WorkoutFeatures (collection)
|     |  |
|     |  +- ActivityGroup (model)
|     |     |- :type ('amrap', 'rounds', 'standard')
|     |     |- * if user adds activity, automatically use 'standard'
|     |     |- * includes logic to create analytics objects by combining
|     |     |    activites with score
|     |     |
|     |     |- :quantity (number of rounds or time for amrap)
|     |     |- :change ('increasing', 'decreasing')
|     |     |- :change_quantity
|     |     |- :order (1, 2...)
|     |     |
|     |     |- :workout_id
|     |     |
|     |     +- Activities (collection)
|     |        |
|     |        +- Activity (model)
|     |           |- :activity_type_id
|     |           |- :mod
|     |           |- :quantity
|     |           |- :unit
|     |           |- :weight
|     |           |- :order (1, 2...)
|     |           +- :activity_group_id
|     |
|     +- DataPoints (collection)
|        |
|    +---+- DataPoint (model)
|    |   |- :type ('activity', 'lift', 'workout')
|    |   |- :name
|    |   |- :mod
|    |   |- :activity_group_id
|    |   |- :workout_id
|    |   |-
|    |   +- * on creation, added to both its Workout's DataPoints and
|    |        the Root's corresponding DataPoints collection
|    |
|    +---------------------------------*
|                                      |
|- ActivityDataPoints (collection) ----*
|                                      |
|- LiftDataPoints (collection) --------*
|                                      |
+- WorkoutDataPoints (collection) -----*
|                                      |
+- { other catgerory } (collection)  --*
```


## Concept

### 9/14
![full system](/lib/assets/concept/IMG_3078.jpg)
![high level](/lib/assets/concept/IMG_3079.jpg)
![workout form](/lib/assets/concept/IMG_3080.jpg)
![analytics creation](/lib/assets/concept/IMG_3081.jpg)
