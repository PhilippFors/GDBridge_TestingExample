using Godot;
using GDBridge;
namespace GDBridge_TEST;

public partial class Node1 : Node
{
	// public NodeHelperBridge godotObject;
	public override void _Ready()
	{
		
		
		// godotObject = new GdScriptBridgeFactory(this).ResolveBridge<NodeHelperBridge>("res://NodeHelper.gd");
	}
}
