if (instance_exists(follow_id))
{
	try
	{
		follow_id = follow_object.id;
		x = follow_object.x
		y = follow_object.y+follow_offset
	}
	catch(_exception)
	{
		
	}
}
else
if (!instance_exists(follow_id))
{
	instance_destroy(self);	
}

