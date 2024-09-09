using Godot;
namespace QuantaDM.scripts.CeeSharp.Extensions;

public static class NodeExtension
{
	public static bool GetBool(this Node node, string key) => node._Get(key).AsBool();
	public static int GetInt(this Node node, string key) => node._Get(key).AsInt32();
	public static double GetDouble(this Node node, string key) => node._Get(key).AsDouble();
}
