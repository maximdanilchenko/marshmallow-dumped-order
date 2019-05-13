## marshmallow-dumped-order

Decorator for `marshmallow.Schema` to sort fields 
in needed order while dumping (python36+).

```python
from marshmallow import Schema, fields
from marshmallow_dumped_order import dumped_order


@dumped_order("name", "age")
class User(Schema):
    age = fields.Int()
    name = fields.String()


dumped = User().dumps({"age": 356, "name": "Jarvis"})

assert dumped.data == '{"name": "Jarvis", "age": 356}'
```
