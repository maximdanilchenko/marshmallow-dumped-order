import unittest


class TestDumpedOrder(unittest.TestCase):
    def setUp(self) -> None:
        from marshmallow import Schema, fields
        from marshmallow_dumped_order import dumped_order

        @dumped_order("name", "years")
        class User(Schema):
            age = fields.Int(dump_to="years")
            name = fields.String()

        user_schema = User()
        self.dumped = user_schema.dumps({"age": 35, "name": "Jarvis"})

    def test_dumped_schema(self):
        self.assertEqual(self.dumped.data, '{"name": "Jarvis", "years": 35}')
