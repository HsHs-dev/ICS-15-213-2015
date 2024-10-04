long absdiff(long x, long y)
{
	long result;
	if (x > y)
		result = x - y;
	else
		result = y - x;
	return result;
}
