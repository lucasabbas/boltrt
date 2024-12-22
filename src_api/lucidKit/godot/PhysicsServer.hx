package lucidKit.godot;

@:native("godot.PhysicsServer")
extern class PhysicsServer extends Object {
    public function areaAddShape(area: RID, shape: RID, transform: Transform, disabled: Bool = false): Void;
    public function areaAttachObjectInstanceId(area: RID, id: Int): Void;
    public function areaClearShapes(area: RID): Void;
    public function areaCreate(): RID;
    public function areaGetObjectInstanceId(area: RID): Int;
    public function areaGetParam(area: RID, param: Int): Variant;
    public function areaGetShape(area: RID, shapeIdx: Int): RID;
    public function areaGetShapeCount(area: RID): Int;
    public function areaGetShapeTransform(area: RID, shapeIdx: Int): Transform;
    public function areaGetSpace(area: RID): RID;
    public function areaGetSpaceOverrideMode(area: RID): Int;
    public function areaGetTransform(area: RID): Transform;
    public function areaIsRayPickable(area: RID): Bool;
    public function areaRemoveShape(area: RID, shapeIdx: Int): Void;
    public function areaSetAreaMonitorCallback(area: RID, receiver: Object, method: String): Void;
    public function areaSetCollisionLayer(area: RID, layer: Int): Void;
    public function areaSetCollisionMask(area: RID, mask: Int): Void;
    public function areaSetMonitorCallback(area: RID, receiver: Object, method: String): Void;
    public function areaSetMonitorable(area: RID, monitorable: Bool): Void;
    public function areaSetParam(area: RID, param: Int, value: Variant): Void;
    public function areaSetRayPickable(area: RID, enable: Bool): Void;
    public function areaSetShape(area: RID, shapeIdx: Int, shape: RID): Void;
    public function areaSetShapeDisabled(area: RID, shapeIdx: Int, disabled: Bool): Void;
    public function areaSetShapeTransform(area: RID, shapeIdx: Int, transform: Transform): Void;
    public function areaSetSpace(area: RID, space: RID): Void;
    public function areaSetSpaceOverrideMode(area: RID, mode: Int): Void;
    public function areaSetTransform(area: RID, transform: Transform): Void;
    public function bodyAddCentralForce(body: RID, force: GdVector3): Void;
    public function bodyAddCollisionException(body: RID, exceptedBody: RID): Void;
    public function bodyAddForce(body: RID, force: GdVector3, position: GdVector3): Void;
    public function bodyAddShape(body: RID, shape: RID, transform: Transform, disabled: Bool = false): Void;
    public function bodyAddTorque(body: RID, torque: GdVector3): Void;
    public function bodyApplyCentralImpulse(body: RID, impulse: GdVector3): Void;
    public function bodyApplyImpulse(body: RID, position: GdVector3, impulse: GdVector3): Void;
    public function bodyApplyTorqueImpulse(body: RID, impulse: GdVector3): Void;
    public function bodyAttachObjectInstanceId(body: RID, id: Int): Void;
    public function bodyClearShapes(body: RID): Void;
    public function bodyCreate(mode: Int = 2, initSleeping: Bool = false): RID;
    public function bodyGetCollisionLayer(body: RID): Int;
    public function bodyGetCollisionMask(body: RID): Int;
    public function bodyGetDirectState(body: RID): PhysicsDirectBodyState;
    public function bodyGetKinematicSafeMargin(body: RID): Float;
    public function bodyGetMaxContactsReported(body: RID): Int;
    public function bodyGetMode(body: RID): Int;
    public function bodyGetObjectInstanceId(body: RID): Int;
    public function bodyGetParam(body: RID, param: Int): Float;
    public function bodyGetShape(body: RID, shapeIdx: Int): RID;
    public function bodyGetShapeCount(body: RID): Int;
    public function bodyGetShapeTransform(body: RID, shapeIdx: Int): Transform;
    public function bodyGetSpace(body: RID): RID;
    public function bodyGetState(body: RID, state: Int): Variant;
    public function bodyIsAxisLocked(body: RID, axis: Int): Bool;
    public function bodyIsContinuousCollisionDetectionEnabled(body: RID): Bool;
    public function bodyIsOmittingForceIntegration(body: RID): Bool;
    public function bodyIsRayPickable(body: RID): Bool;
    public function bodyRemoveCollisionException(body: RID, exceptedBody: RID): Void;
    public function bodyRemoveShape(body: RID, shapeIdx: Int): Void;
    public function bodySetAxisLock(body: RID, axis: Int, lock: Bool): Void;
    public function bodySetAxisVelocity(body: RID, axisVelocity: GdVector3): Void;
    public function bodySetCollisionLayer(body: RID, layer: Int): Void;
    public function bodySetCollisionMask(body: RID, mask: Int): Void;
    public function bodySetEnableContinuousCollisionDetection(body: RID, enable: Bool): Void;
    public function bodySetForceIntegrationCallback(body: RID, receiver: Object, method: String, userdata: Variant): Void;
    public function bodySetKinematicSafeMargin(body: RID, margin: Float): Void;
    public function bodySetMaxContactsReported(body: RID, amount: Int): Void;
    public function bodySetMode(body: RID, mode: Int): Void;
    public function bodySetOmitForceIntegration(body: RID, enable: Bool): Void;
    public function bodySetParam(body: RID, param: Int, value: Float): Void;
    public function bodySetRayPickable(body: RID, enable: Bool): Void;
    public function bodySetShape(body: RID, shapeIdx: Int, shape: RID): Void;
    public function bodySetShapeDisabled(body: RID, shapeIdx: Int, disabled: Bool): Void;
    public function bodySetShapeTransform(body: RID, shapeIdx: Int, transform: Transform): Void;
    public function bodySetSpace(body: RID, space: RID): Void;
    public function bodySetState(body: RID, state: Int, value: Variant): Void;
    public function bodyTestMotion(body: RID, from: Transform, motion: GdVector3, infiniteInertia: Bool, result: PhysicsTestMotionResult, excludeRaycastShapes: Bool = true, exclude: Array<Dynamic>): Bool;
    public function coneTwistJointGetParam(joint: RID, param: Int): Float;
    public function coneTwistJointSetParam(joint: RID, param: Int, value: Float): Void;
    public function freeRid(rid: RID): Void;
    public function generic6dofJointGetFlag(joint: RID, axis: Int, flag: Int): Bool;
    public function generic6dofJointGetParam(joint: RID, axis: Int, param: Int): Float;
    public function generic6dofJointSetFlag(joint: RID, axis: Int, flag: Int, enable: Bool): Void;
    public function generic6dofJointSetParam(joint: RID, axis: Int, param: Int, value: Float): Void;
    public function getProcessInfo(processInfo: Int): Int;
    public function hingeJointGetFlag(joint: RID, flag: Int): Bool;
    public function hingeJointGetParam(joint: RID, param: Int): Float;
    public function hingeJointSetFlag(joint: RID, flag: Int, enabled: Bool): Void;
    public function hingeJointSetParam(joint: RID, param: Int, value: Float): Void;
    public function jointCreateConeTwist(bodyA: RID, localRefA: Transform, bodyB: RID, localRefB: Transform): RID;
    public function jointCreateGeneric6dof(bodyA: RID, localRefA: Transform, bodyB: RID, localRefB: Transform): RID;
    public function jointCreateHinge(bodyA: RID, hingeA: Transform, bodyB: RID, hingeB: Transform): RID;
    public function jointCreatePin(bodyA: RID, localA: GdVector3, bodyB: RID, localB: GdVector3): RID;
    public function jointCreateSlider(bodyA: RID, localRefA: Transform, bodyB: RID, localRefB: Transform): RID;
    public function jointGetSolverPriority(joint: RID): Int;
    public function jointGetType(joint: RID): Int;
    public function jointSetSolverPriority(joint: RID, priority: Int): Void;
    public function pinJointGetLocalA(joint: RID): Vector3;
    public function pinJointGetLocalB(joint: RID): Vector3;
    public function pinJointGetParam(joint: RID, param: Int): Float;
    public function pinJointSetLocalA(joint: RID, localA: GdVector3): Void;
    public function pinJointSetLocalB(joint: RID, localB: GdVector3): Void;
    public function pinJointSetParam(joint: RID, param: Int, value: Float): Void;
    public function setActive(active: Bool): Void;
    public function setCollisionIterations(iterations: Int): Void;
    public function shapeCreate(type: Int): RID;
    public function shapeGetData(shape: RID): Variant;
    public function shapeGetType(shape: RID): Int;
    public function shapeSetData(shape: RID, data: Variant): Void;
    public function sliderJointGetParam(joint: RID, param: Int): Float;
    public function sliderJointSetParam(joint: RID, param: Int, value: Float): Void;
    public function spaceCreate(): RID;
    public function spaceGetDirectState(space: RID): PhysicsDirectSpaceState;
    public function spaceGetParam(space: RID, param: Int): Float;
    public function spaceIsActive(space: RID): Bool;
    public function spaceSetActive(space: RID, active: Bool): Void;
    public function spaceSetParam(space: RID, param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
