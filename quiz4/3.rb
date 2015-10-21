Alan noticed that this will fail when update_quantity is called. Since quantity is an instance variable, it must be accessed with the @quantity notation when setting it. One way to fix this to change attr_reader to attr_accessor.

Is there anything wrong with fixing it this way?

A potential problem is that you would give the user the opportunity to directly change the @quantity value
of the object?