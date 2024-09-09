using Godot;
namespace QuantaDM.scripts.CeeSharp.Extensions;

public static class Node3DExtension
{
	public static void SetYPos(this Node3D node, float y)
	{
		var pos = node.Position;
		pos.Y = y;
		node.Position = pos;
	}

	public static void SetXPos(this Node3D node, float x)
	{
		var pos = node.Position;
		pos.X = x;
		node.Position = pos;
	}

	public static void SetZPos(this Node3D node, float z)
	{
		var pos = node.Position;
		pos.Z = z;
		node.Position = pos;
	}

	public static void SetPos(this Node3D node, float x, float y, float z)
	{
		var pos = node.Position;
		pos.X = x;
		pos.Y = y;
		pos.Z = z;
		node.Position = pos;
	}

	public static void SetXRot(this Node3D node, float x)
	{
		var rot = node.Rotation;
		rot.X = x;
		node.Rotation = rot;
	}

	public static void SetYRot(this Node3D node, float y)
	{
		var rot = node.Rotation;
		rot.Y = y;
		node.Rotation = rot;
	}

	public static void SetZRot(this Node3D node, float z)
	{
		var rot = node.Rotation;
		rot.Z = z;
		node.Rotation = rot;
	}

	public static void SetOrigin(this Node3D node, Vector3 origin)
	{
		var transform = node.Transform;
		transform.Origin = origin;
		node.Transform = transform;
	}

	public static void SetYTrans(this Node3D node, float y)
	{
		var trans = node.Transform;
		trans.Origin.Y = y;
		node.Transform = trans;
	}
}
