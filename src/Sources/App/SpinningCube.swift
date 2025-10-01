import SwiftGodot

@Godot(.tool)
class SpinningCube: Node3D {
    public override func _ready () {
        let meshRender = MeshInstance3D()
        meshRender.mesh = BoxMesh()
        addChild(node: meshRender)
    }

    public override func _process(delta: Double) {
        rotateY(angle: -delta)
    }
}