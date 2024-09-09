using Godot;

namespace QuantaDM.scripts.CeeSharp.Extensions;

public static class Transform3DExtension
{
	public static void SetX(this Transform3D transform, float x)
	{
		var origin = transform.Origin;
		origin.X = x;
		transform.Origin = origin; 
	}

	public static void SetY(this Transform3D transform, float y)
	{
		var origin = transform.Origin;
		origin.Y = y;
		transform.Origin = origin;
	}

	public static void SetZ(this Transform3D transform, float z)
	{
		var origin = transform.Origin;
		origin.Z = z;
		transform.Origin = origin;
	}
	
	// public static void SetOrigin(this Transform3D transform, Vector3 origin)
	// {
	// 	transform.Origin = origin;
	// }
}
