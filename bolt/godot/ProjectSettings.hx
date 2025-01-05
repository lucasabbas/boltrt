package bolt.godot;

class ProjectSettingsSignalNames {
    public static var projectSettingsChanged: String = "project_settings_changed";
}
@:native("godot.ProjectSettings")
extern class ProjectSettings extends Object {
    public var androidModules: String;
    public var applicationBootSplashBgColor: Color;
    public var applicationBootSplashFullsize: Bool;
    public var applicationBootSplashImage: String;
    public var applicationBootSplashMinimumDisplayTime: Int;
    public var applicationBootSplashShowImage: Bool;
    public var applicationBootSplashUseFilter: Bool;
    public var applicationConfigCustomUserDirName: String;
    public var applicationConfigDescription: String;
    public var applicationConfigIcon: String;
    public var applicationConfigMacosNativeIcon: String;
    public var applicationConfigName: String;
    public var applicationConfigProjectSettingsOverride: String;
    public var applicationConfigUseCustomUserDir: Bool;
    public var applicationConfigUseHiddenProjectDataDirectory: Bool;
    public var applicationConfigWindowsNativeIcon: String;
    public var applicationRunDeltaSmoothing: Bool;
    public var applicationRunDeltaSyncAfterDraw: Bool;
    public var applicationRunDisableStderr: Bool;
    public var applicationRunDisableStdout: Bool;
    public var applicationRunFlushStdoutOnPrint: Bool;
    public var applicationRunFlushStdoutOnPrint.debug: Bool;
    public var applicationRunFrameDelayMsec: Int;
    public var applicationRunLowProcessorMode: Bool;
    public var applicationRunLowProcessorModeSleepUsec: Int;
    public var applicationRunMainScene: String;
    public var audio2dPanningStrength: Float;
    public var audio3dPanningStrength: Float;
    public var audioChannelDisableThresholdDb: Float;
    public var audioChannelDisableTime: Float;
    public var audioDefaultBusLayout: String;
    public var audioDriver: String;
    public var audioEnableAudioInput: Bool;
    public var audioGeneralIosMixWithOthers: Bool;
    public var audioGeneralIosSessionCategory: Int;
    public var audioGeneralTextToSpeech: Bool;
    public var audioMixRate: Int;
    public var audioMixRate.web: Int;
    public var audioOutputLatency: Int;
    public var audioOutputLatency.web: Int;
    public var audioVideoDelayCompensationMs: Int;
    public var compressionFormatsGzipCompressionLevel: Int;
    public var compressionFormatsZlibCompressionLevel: Int;
    public var compressionFormatsZstdCompressionLevel: Int;
    public var compressionFormatsZstdLongDistanceMatching: Bool;
    public var compressionFormatsZstdWindowLogSize: Int;
    public var debugGdscriptCompletionAutocompleteSettersAndGetters: Bool;
    public var debugGdscriptWarningsConstantUsedAsFunction: Bool;
    public var debugGdscriptWarningsDeprecatedKeyword: Bool;
    public var debugGdscriptWarningsEnable: Bool;
    public var debugGdscriptWarningsExcludeAddons: Bool;
    public var debugGdscriptWarningsExportHintTypeMistmatch: Bool;
    public var debugGdscriptWarningsFunctionConflictsConstant: Bool;
    public var debugGdscriptWarningsFunctionConflictsVariable: Bool;
    public var debugGdscriptWarningsFunctionMayYield: Bool;
    public var debugGdscriptWarningsFunctionUsedAsProperty: Bool;
    public var debugGdscriptWarningsIncompatibleTernary: Bool;
    public var debugGdscriptWarningsIntegerDivision: Bool;
    public var debugGdscriptWarningsNarrowingConversion: Bool;
    public var debugGdscriptWarningsPropertyUsedAsFunction: Bool;
    public var debugGdscriptWarningsReturnValueDiscarded: Bool;
    public var debugGdscriptWarningsShadowedVariable: Bool;
    public var debugGdscriptWarningsStandaloneExpression: Bool;
    public var debugGdscriptWarningsStandaloneTernary: Bool;
    public var debugGdscriptWarningsTreatWarningsAsErrors: Bool;
    public var debugGdscriptWarningsUnassignedVariable: Bool;
    public var debugGdscriptWarningsUnassignedVariableOpAssign: Bool;
    public var debugGdscriptWarningsUnreachableCode: Bool;
    public var debugGdscriptWarningsUnsafeCallArgument: Bool;
    public var debugGdscriptWarningsUnsafeCast: Bool;
    public var debugGdscriptWarningsUnsafeMethodAccess: Bool;
    public var debugGdscriptWarningsUnsafePropertyAccess: Bool;
    public var debugGdscriptWarningsUnusedArgument: Bool;
    public var debugGdscriptWarningsUnusedClassVariable: Bool;
    public var debugGdscriptWarningsUnusedSignal: Bool;
    public var debugGdscriptWarningsUnusedVariable: Bool;
    public var debugGdscriptWarningsVariableConflictsFunction: Bool;
    public var debugGdscriptWarningsVoidAssignment: Bool;
    public var debugSettingsCrashHandlerMessage: String;
    public var debugSettingsCrashHandlerMessage.editor: String;
    public var debugSettingsFpsForceFps: Int;
    public var debugSettingsGdscriptMaxCallStack: Int;
    public var debugSettingsPhysicsInterpolationEnableWarnings: Bool;
    public var debugSettingsProfilerMaxFunctions: Int;
    public var debugSettingsStdoutPrintFps: Bool;
    public var debugSettingsStdoutVerboseStdout: Bool;
    public var debugSettingsVisualScriptMaxCallStack: Int;
    public var debugShapesCollisionContactColor: Color;
    public var debugShapesCollisionDraw2dOutlines: Bool;
    public var debugShapesCollisionMaxContactsDisplayed: Int;
    public var debugShapesCollisionShapeColor: Color;
    public var debugShapesNavigationDisabledGeometryColor: Color;
    public var debugShapesNavigationGeometryColor: Color;
    public var displayMouseCursorCustomImage: String;
    public var displayMouseCursorCustomImageHotspot: Vector2;
    public var displayMouseCursorTooltipPositionOffset: Vector2;
    public var displayWindowDpiAllowHidpi: Bool;
    public var displayWindowEnergySavingKeepScreenOn: Bool;
    public var displayWindowHandheldOrientation: String;
    public var displayWindowIosAllowHighRefreshRate: Bool;
    public var displayWindowIosHideHomeIndicator: Bool;
    public var displayWindowIosHideStatusBar: Bool;
    public var displayWindowIosSuppressUiGesture: Bool;
    public var displayWindowPerPixelTransparencyAllowed: Bool;
    public var displayWindowPerPixelTransparencyEnabled: Bool;
    public var displayWindowSizeAlwaysOnTop: Bool;
    public var displayWindowSizeBorderless: Bool;
    public var displayWindowSizeFullscreen: Bool;
    public var displayWindowSizeHeight: Int;
    public var displayWindowSizeResizable: Bool;
    public var displayWindowSizeTestHeight: Int;
    public var displayWindowSizeTestWidth: Int;
    public var displayWindowSizeWidth: Int;
    public var displayWindowTabletDriver: String;
    public var displayWindowVsyncUseVsync: Bool;
    public var displayWindowVsyncVsyncViaCompositor: Bool;
    public var editorMainRunArgs: String;
    public var editorSceneNaming: Int;
    public var editorScriptTemplatesSearchPath: String;
    public var editorSearchInFileExtensions: PoolStringArray;
    public var editorVersionControlAutoloadOnStartup: Bool;
    public var editorVersionControlPluginName: String;
    public var guiCommonDefaultScrollDeadzone: Int;
    public var guiCommonDropMouseOnGuiInputDisabled: Bool;
    public var guiCommonSwapOkCancel: Bool;
    public var guiCommonTextEditUndoStackMaxSize: Int;
    public var guiThemeCustom: String;
    public var guiThemeCustomFont: String;
    public var guiThemeUseHidpi: Bool;
    public var guiTimersIncrementalSearchMaxIntervalMsec: Int;
    public var guiTimersTextEditIdleDetectSec: Float;
    public var guiTimersTooltipDelaySec: Float;
    public var inputUiAccept: Map<Dynamic, Dynamic>;
    public var inputUiCancel: Map<Dynamic, Dynamic>;
    public var inputUiDown: Map<Dynamic, Dynamic>;
    public var inputUiEnd: Map<Dynamic, Dynamic>;
    public var inputUiFocusNext: Map<Dynamic, Dynamic>;
    public var inputUiFocusPrev: Map<Dynamic, Dynamic>;
    public var inputUiHome: Map<Dynamic, Dynamic>;
    public var inputUiLeft: Map<Dynamic, Dynamic>;
    public var inputUiPageDown: Map<Dynamic, Dynamic>;
    public var inputUiPageUp: Map<Dynamic, Dynamic>;
    public var inputUiRight: Map<Dynamic, Dynamic>;
    public var inputUiSelect: Map<Dynamic, Dynamic>;
    public var inputUiUp: Map<Dynamic, Dynamic>;
    public var inputDevicesBufferingAgileEventFlushing: Bool;
    public var inputDevicesCompatibilityLegacyJustPressedBehavior: Bool;
    public var inputDevicesPointingAndroidEnableLongPressAsRightClick: Bool;
    public var inputDevicesPointingAndroidEnablePanAndScaleGestures: Bool;
    public var inputDevicesPointingAndroidRotaryInputScrollAxis: Int;
    public var inputDevicesPointingEmulateMouseFromTouch: Bool;
    public var inputDevicesPointingEmulateTouchFromMouse: Bool;
    public var layerNames2dNavigationLayer1: String;
    public var layerNames2dNavigationLayer10: String;
    public var layerNames2dNavigationLayer11: String;
    public var layerNames2dNavigationLayer12: String;
    public var layerNames2dNavigationLayer13: String;
    public var layerNames2dNavigationLayer14: String;
    public var layerNames2dNavigationLayer15: String;
    public var layerNames2dNavigationLayer16: String;
    public var layerNames2dNavigationLayer17: String;
    public var layerNames2dNavigationLayer18: String;
    public var layerNames2dNavigationLayer19: String;
    public var layerNames2dNavigationLayer2: String;
    public var layerNames2dNavigationLayer20: String;
    public var layerNames2dNavigationLayer21: String;
    public var layerNames2dNavigationLayer22: String;
    public var layerNames2dNavigationLayer23: String;
    public var layerNames2dNavigationLayer24: String;
    public var layerNames2dNavigationLayer25: String;
    public var layerNames2dNavigationLayer26: String;
    public var layerNames2dNavigationLayer27: String;
    public var layerNames2dNavigationLayer28: String;
    public var layerNames2dNavigationLayer29: String;
    public var layerNames2dNavigationLayer3: String;
    public var layerNames2dNavigationLayer30: String;
    public var layerNames2dNavigationLayer31: String;
    public var layerNames2dNavigationLayer32: String;
    public var layerNames2dNavigationLayer4: String;
    public var layerNames2dNavigationLayer5: String;
    public var layerNames2dNavigationLayer6: String;
    public var layerNames2dNavigationLayer7: String;
    public var layerNames2dNavigationLayer8: String;
    public var layerNames2dNavigationLayer9: String;
    public var layerNames2dPhysicsLayer1: String;
    public var layerNames2dPhysicsLayer10: String;
    public var layerNames2dPhysicsLayer11: String;
    public var layerNames2dPhysicsLayer12: String;
    public var layerNames2dPhysicsLayer13: String;
    public var layerNames2dPhysicsLayer14: String;
    public var layerNames2dPhysicsLayer15: String;
    public var layerNames2dPhysicsLayer16: String;
    public var layerNames2dPhysicsLayer17: String;
    public var layerNames2dPhysicsLayer18: String;
    public var layerNames2dPhysicsLayer19: String;
    public var layerNames2dPhysicsLayer2: String;
    public var layerNames2dPhysicsLayer20: String;
    public var layerNames2dPhysicsLayer21: String;
    public var layerNames2dPhysicsLayer22: String;
    public var layerNames2dPhysicsLayer23: String;
    public var layerNames2dPhysicsLayer24: String;
    public var layerNames2dPhysicsLayer25: String;
    public var layerNames2dPhysicsLayer26: String;
    public var layerNames2dPhysicsLayer27: String;
    public var layerNames2dPhysicsLayer28: String;
    public var layerNames2dPhysicsLayer29: String;
    public var layerNames2dPhysicsLayer3: String;
    public var layerNames2dPhysicsLayer30: String;
    public var layerNames2dPhysicsLayer31: String;
    public var layerNames2dPhysicsLayer32: String;
    public var layerNames2dPhysicsLayer4: String;
    public var layerNames2dPhysicsLayer5: String;
    public var layerNames2dPhysicsLayer6: String;
    public var layerNames2dPhysicsLayer7: String;
    public var layerNames2dPhysicsLayer8: String;
    public var layerNames2dPhysicsLayer9: String;
    public var layerNames2dRenderLayer1: String;
    public var layerNames2dRenderLayer10: String;
    public var layerNames2dRenderLayer11: String;
    public var layerNames2dRenderLayer12: String;
    public var layerNames2dRenderLayer13: String;
    public var layerNames2dRenderLayer14: String;
    public var layerNames2dRenderLayer15: String;
    public var layerNames2dRenderLayer16: String;
    public var layerNames2dRenderLayer17: String;
    public var layerNames2dRenderLayer18: String;
    public var layerNames2dRenderLayer19: String;
    public var layerNames2dRenderLayer2: String;
    public var layerNames2dRenderLayer20: String;
    public var layerNames2dRenderLayer3: String;
    public var layerNames2dRenderLayer4: String;
    public var layerNames2dRenderLayer5: String;
    public var layerNames2dRenderLayer6: String;
    public var layerNames2dRenderLayer7: String;
    public var layerNames2dRenderLayer8: String;
    public var layerNames2dRenderLayer9: String;
    public var layerNames3dNavigationLayer1: String;
    public var layerNames3dNavigationLayer10: String;
    public var layerNames3dNavigationLayer11: String;
    public var layerNames3dNavigationLayer12: String;
    public var layerNames3dNavigationLayer13: String;
    public var layerNames3dNavigationLayer14: String;
    public var layerNames3dNavigationLayer15: String;
    public var layerNames3dNavigationLayer16: String;
    public var layerNames3dNavigationLayer17: String;
    public var layerNames3dNavigationLayer18: String;
    public var layerNames3dNavigationLayer19: String;
    public var layerNames3dNavigationLayer2: String;
    public var layerNames3dNavigationLayer20: String;
    public var layerNames3dNavigationLayer21: String;
    public var layerNames3dNavigationLayer22: String;
    public var layerNames3dNavigationLayer23: String;
    public var layerNames3dNavigationLayer24: String;
    public var layerNames3dNavigationLayer25: String;
    public var layerNames3dNavigationLayer26: String;
    public var layerNames3dNavigationLayer27: String;
    public var layerNames3dNavigationLayer28: String;
    public var layerNames3dNavigationLayer29: String;
    public var layerNames3dNavigationLayer3: String;
    public var layerNames3dNavigationLayer30: String;
    public var layerNames3dNavigationLayer31: String;
    public var layerNames3dNavigationLayer32: String;
    public var layerNames3dNavigationLayer4: String;
    public var layerNames3dNavigationLayer5: String;
    public var layerNames3dNavigationLayer6: String;
    public var layerNames3dNavigationLayer7: String;
    public var layerNames3dNavigationLayer8: String;
    public var layerNames3dNavigationLayer9: String;
    public var layerNames3dPhysicsLayer1: String;
    public var layerNames3dPhysicsLayer10: String;
    public var layerNames3dPhysicsLayer11: String;
    public var layerNames3dPhysicsLayer12: String;
    public var layerNames3dPhysicsLayer13: String;
    public var layerNames3dPhysicsLayer14: String;
    public var layerNames3dPhysicsLayer15: String;
    public var layerNames3dPhysicsLayer16: String;
    public var layerNames3dPhysicsLayer17: String;
    public var layerNames3dPhysicsLayer18: String;
    public var layerNames3dPhysicsLayer19: String;
    public var layerNames3dPhysicsLayer2: String;
    public var layerNames3dPhysicsLayer20: String;
    public var layerNames3dPhysicsLayer21: String;
    public var layerNames3dPhysicsLayer22: String;
    public var layerNames3dPhysicsLayer23: String;
    public var layerNames3dPhysicsLayer24: String;
    public var layerNames3dPhysicsLayer25: String;
    public var layerNames3dPhysicsLayer26: String;
    public var layerNames3dPhysicsLayer27: String;
    public var layerNames3dPhysicsLayer28: String;
    public var layerNames3dPhysicsLayer29: String;
    public var layerNames3dPhysicsLayer3: String;
    public var layerNames3dPhysicsLayer30: String;
    public var layerNames3dPhysicsLayer31: String;
    public var layerNames3dPhysicsLayer32: String;
    public var layerNames3dPhysicsLayer4: String;
    public var layerNames3dPhysicsLayer5: String;
    public var layerNames3dPhysicsLayer6: String;
    public var layerNames3dPhysicsLayer7: String;
    public var layerNames3dPhysicsLayer8: String;
    public var layerNames3dPhysicsLayer9: String;
    public var layerNames3dRenderLayer1: String;
    public var layerNames3dRenderLayer10: String;
    public var layerNames3dRenderLayer11: String;
    public var layerNames3dRenderLayer12: String;
    public var layerNames3dRenderLayer13: String;
    public var layerNames3dRenderLayer14: String;
    public var layerNames3dRenderLayer15: String;
    public var layerNames3dRenderLayer16: String;
    public var layerNames3dRenderLayer17: String;
    public var layerNames3dRenderLayer18: String;
    public var layerNames3dRenderLayer19: String;
    public var layerNames3dRenderLayer2: String;
    public var layerNames3dRenderLayer20: String;
    public var layerNames3dRenderLayer3: String;
    public var layerNames3dRenderLayer4: String;
    public var layerNames3dRenderLayer5: String;
    public var layerNames3dRenderLayer6: String;
    public var layerNames3dRenderLayer7: String;
    public var layerNames3dRenderLayer8: String;
    public var layerNames3dRenderLayer9: String;
    public var localeFallback: String;
    public var localeTest: String;
    public var loggingFileLoggingEnableFileLogging: Bool;
    public var loggingFileLoggingEnableFileLogging.pc: Bool;
    public var loggingFileLoggingLogPath: String;
    public var loggingFileLoggingMaxLogFiles: Int;
    public var memoryLimitsCommandQueueMultithreadingQueueSizeKb: Int;
    public var memoryLimitsMessageQueueMaxSizeMb: Int;
    public var memoryLimitsMultithreadedServerRidPoolPrealloc: Int;
    public var monoDebuggerAgentPort: Int;
    public var monoDebuggerAgentWaitForDebugger: Bool;
    public var monoDebuggerAgentWaitTimeout: Int;
    public var monoProfilerArgs: String;
    public var monoProfilerEnabled: Bool;
    public var monoProjectAssemblyName: String;
    public var monoProjectC#ProjectDirectory: String;
    public var monoProjectSolutionDirectory: String;
    public var monoRuntimeUnhandledExceptionPolicy: Int;
    public var navigation2dDefaultCellHeight: Float;
    public var navigation2dDefaultCellSize: Float;
    public var navigation2dDefaultEdgeConnectionMargin: Float;
    public var navigation3dDefaultCellHeight: Float;
    public var navigation3dDefaultCellSize: Float;
    public var navigation3dDefaultEdgeConnectionMargin: Float;
    public var navigation3dDefaultMapUp: Vector3;
    public var networkLimitsDebuggerStdoutMaxCharsPerSecond: Int;
    public var networkLimitsDebuggerStdoutMaxErrorsPerSecond: Int;
    public var networkLimitsDebuggerStdoutMaxMessagesPerFrame: Int;
    public var networkLimitsDebuggerStdoutMaxWarningsPerSecond: Int;
    public var networkLimitsPacketPeerStreamMaxBufferPo2: Int;
    public var networkLimitsTcpConnectTimeoutSeconds: Int;
    public var networkLimitsWebrtcMaxChannelInBufferKb: Int;
    public var networkLimitsWebsocketClientMaxInBufferKb: Int;
    public var networkLimitsWebsocketClientMaxInPackets: Int;
    public var networkLimitsWebsocketClientMaxOutBufferKb: Int;
    public var networkLimitsWebsocketClientMaxOutPackets: Int;
    public var networkLimitsWebsocketServerMaxInBufferKb: Int;
    public var networkLimitsWebsocketServerMaxInPackets: Int;
    public var networkLimitsWebsocketServerMaxOutBufferKb: Int;
    public var networkLimitsWebsocketServerMaxOutPackets: Int;
    public var networkRemoteFsPageReadAhead: Int;
    public var networkRemoteFsPageSize: Int;
    public var networkSslCertificates: String;
    public var nodeNameCasing: Int;
    public var nodeNameNumSeparator: Int;
    public var physics2dBpHashTableSize: Int;
    public var physics2dBvhCollisionMargin: Float;
    public var physics2dCellSize: Int;
    public var physics2dDefaultAngularDamp: Float;
    public var physics2dDefaultGravity: Int;
    public var physics2dDefaultGravityVector: Vector2;
    public var physics2dDefaultLinearDamp: Float;
    public var physics2dLargeObjectSurfaceThresholdInCells: Int;
    public var physics2dPhysicsEngine: String;
    public var physics2dSleepThresholdAngular: Float;
    public var physics2dSleepThresholdLinear: Float;
    public var physics2dThreadModel: Int;
    public var physics2dTimeBeforeSleep: Float;
    public var physics2dUseBvh: Bool;
    public var physics3dActiveSoftWorld: Bool;
    public var physics3dDefaultAngularDamp: Float;
    public var physics3dDefaultGravity: Float;
    public var physics3dDefaultGravityVector: Vector3;
    public var physics3dDefaultLinearDamp: Float;
    public var physics3dGodotPhysicsBvhCollisionMargin: Float;
    public var physics3dGodotPhysicsUseBvh: Bool;
    public var physics3dPhysicsEngine: String;
    public var physics3dSmoothTrimeshCollision: Bool;
    public var physicsCommonEnableObjectPicking: Bool;
    public var physicsCommonEnablePauseAwarePicking: Bool;
    public var physicsCommonPhysicsFps: Int;
    public var physicsCommonPhysicsInterpolation: Bool;
    public var physicsCommonPhysicsJitterFix: Float;
    public var rendering2dOpenglBatchingSendNull: Int;
    public var rendering2dOpenglBatchingStream: Int;
    public var rendering2dOpenglLegacyOrphanBuffers: Int;
    public var rendering2dOpenglLegacyStream: Int;
    public var rendering2dOptionsCullingMode: Int;
    public var rendering2dOptionsNinepatchMode: Int;
    public var rendering2dOptionsUseNvidiaRectFlickerWorkaround: Bool;
    public var rendering2dOptionsUseSoftwareSkinning: Bool;
    public var rendering2dSnappingUseGpuPixelSnap: Bool;
    public var renderingBatchingDebugDiagnoseFrame: Bool;
    public var renderingBatchingDebugFlashBatching: Bool;
    public var renderingBatchingLightsMaxJoinItems: Int;
    public var renderingBatchingLightsScissorAreaThreshold: Float;
    public var renderingBatchingOptionsSingleRectFallback: Bool;
    public var renderingBatchingOptionsUseBatching: Bool;
    public var renderingBatchingOptionsUseBatchingInEditor: Bool;
    public var renderingBatchingOptionsUseMultirect: Bool;
    public var renderingBatchingParametersBatchBufferSize: Int;
    public var renderingBatchingParametersColoredVertexFormatThreshold: Float;
    public var renderingBatchingParametersItemReorderingLookahead: Int;
    public var renderingBatchingParametersMaxJoinItemCommands: Int;
    public var renderingBatchingPrecisionUvContract: Bool;
    public var renderingBatchingPrecisionUvContractAmount: Int;
    public var renderingCpuLightmapperQualityHighQualityRayCount: Int;
    public var renderingCpuLightmapperQualityLowQualityRayCount: Int;
    public var renderingCpuLightmapperQualityMediumQualityRayCount: Int;
    public var renderingCpuLightmapperQualityUltraQualityRayCount: Int;
    public var renderingEnvironmentDefaultClearColor: Color;
    public var renderingEnvironmentDefaultEnvironment: String;
    public var renderingGles2CompatibilityDisableHalfFloat: Bool;
    public var renderingGles2CompatibilityDisableHalfFloat.iOS: Bool;
    public var renderingGles2CompatibilityEnableHighFloat.Android: Bool;
    public var renderingGles3ShadersLogActiveAsyncCompilesCount: Bool;
    public var renderingGles3ShadersMaxSimultaneousCompiles: Int;
    public var renderingGles3ShadersMaxSimultaneousCompiles.mobile: Int;
    public var renderingGles3ShadersMaxSimultaneousCompiles.web: Int;
    public var renderingGles3ShadersShaderCacheSizeMb: Int;
    public var renderingGles3ShadersShaderCacheSizeMb.mobile: Int;
    public var renderingGles3ShadersShaderCacheSizeMb.web: Int;
    public var renderingGles3ShadersShaderCompilationMode: Int;
    public var renderingGles3ShadersShaderCompilationMode.mobile: Int;
    public var renderingGles3ShadersShaderCompilationMode.web: Int;
    public var renderingLimitsBuffersCanvasPolygonBufferSizeKb: Int;
    public var renderingLimitsBuffersCanvasPolygonIndexBufferSizeKb: Int;
    public var renderingLimitsBuffersImmediateBufferSizeKb: Int;
    public var renderingLimitsTimeTimeRolloverSecs: Float;
    public var renderingMiscLosslessCompressionForcePng: Bool;
    public var renderingMiscLosslessCompressionWebpCompressionLevel: Int;
    public var renderingMiscMeshStorageSplitStream: Bool;
    public var renderingMiscOcclusionCullingMaxActivePolygons: Int;
    public var renderingMiscOcclusionCullingMaxActiveSpheres: Int;
    public var renderingPortalsAdvancedFlipImportedPortals: Bool;
    public var renderingPortalsDebugLogging: Bool;
    public var renderingPortalsGameplayUseSignals: Bool;
    public var renderingPortalsOptimizeRemoveDanglers: Bool;
    public var renderingPortalsPvsPvsLogging: Bool;
    public var renderingPortalsPvsUseSimplePvs: Bool;
    public var renderingQualityDepthHdr: Bool;
    public var renderingQualityDepthHdr.mobile: Bool;
    public var renderingQualityDepthUse32BpcDepth: Bool;
    public var renderingQualityDepthPrepassDisableForVendors: String;
    public var renderingQualityDepthPrepassEnable: Bool;
    public var renderingQualityDirectionalShadowSize: Int;
    public var renderingQualityDirectionalShadowSize.mobile: Int;
    public var renderingQualityDriverDriverName: String;
    public var renderingQualityDriverFallbackToGles2: Bool;
    public var renderingQualityFiltersAnisotropicFilterLevel: Int;
    public var renderingQualityFiltersMsaa: Int;
    public var renderingQualityFiltersSharpenIntensity: Float;
    public var renderingQualityFiltersUseDebanding: Bool;
    public var renderingQualityFiltersUseFxaa: Bool;
    public var renderingQualityFiltersUseNearestMipmapFilter: Bool;
    public var renderingQualityIntendedUsageFramebufferAllocation: Int;
    public var renderingQualityIntendedUsageFramebufferAllocation.mobile: Int;
    public var renderingQualityLightmappingUseBicubicSampling: Bool;
    public var renderingQualityLightmappingUseBicubicSampling.mobile: Bool;
    public var renderingQualityReflectionsAtlasSize: Int;
    public var renderingQualityReflectionsAtlasSubdiv: Int;
    public var renderingQualityReflectionsHighQualityGgx: Bool;
    public var renderingQualityReflectionsHighQualityGgx.mobile: Bool;
    public var renderingQualityReflectionsIrradianceMaxSize: Int;
    public var renderingQualityReflectionsTextureArrayReflections: Bool;
    public var renderingQualityReflectionsTextureArrayReflections.mobile: Bool;
    public var renderingQualityShadingForceBlinnOverGgx: Bool;
    public var renderingQualityShadingForceBlinnOverGgx.mobile: Bool;
    public var renderingQualityShadingForceLambertOverBurley: Bool;
    public var renderingQualityShadingForceLambertOverBurley.mobile: Bool;
    public var renderingQualityShadingForceVertexShading: Bool;
    public var renderingQualityShadingForceVertexShading.mobile: Bool;
    public var renderingQualityShadingUsePhysicalLightAttenuation: Bool;
    public var renderingQualityShadowAtlasCubemapSize: Int;
    public var renderingQualityShadowAtlasQuadrant0Subdiv: Int;
    public var renderingQualityShadowAtlasQuadrant1Subdiv: Int;
    public var renderingQualityShadowAtlasQuadrant2Subdiv: Int;
    public var renderingQualityShadowAtlasQuadrant3Subdiv: Int;
    public var renderingQualityShadowAtlasSize: Int;
    public var renderingQualityShadowAtlasSize.mobile: Int;
    public var renderingQualityShadowsCasterCulling: Bool;
    public var renderingQualityShadowsFilterMode: Int;
    public var renderingQualityShadowsFilterMode.mobile: Int;
    public var renderingQualityShadowsLightCulling: Bool;
    public var renderingQualitySkinningForceSoftwareSkinning: Bool;
    public var renderingQualitySkinningSoftwareSkinningFallback: Bool;
    public var renderingQualitySpatialPartitioningBvhCollisionMargin: Float;
    public var renderingQualitySpatialPartitioningRenderTreeBalance: Float;
    public var renderingQualitySpatialPartitioningUseBvh: Bool;
    public var renderingThreadsThreadModel: Int;
    public var renderingThreadsThreadSafeBvh: Bool;
    public var renderingViewportTransparentBackground: Bool;
    public var renderingVramCompressionImportBptc: Bool;
    public var renderingVramCompressionImportEtc: Bool;
    public var renderingVramCompressionImportEtc2: Bool;
    public var renderingVramCompressionImportPvrtc: Bool;
    public var renderingVramCompressionImportS3tc: Bool;
    public var world2dCellSize: Int;
    public function addPropertyInfo(hint: Map<Dynamic, Dynamic>): Void;
    public function clear(name: String): Void;
    public function getOrder(name: String): Int;
    public function getSetting(name: String): Dynamic;
    public function globalizePath(path: String): String;
    public function hasSetting(name: String): Bool;
    public function loadResourcePack(pack: String, replaceFiles: Bool = true, offset: Int = 0): Bool;
    public function localizePath(path: String): String;
    public function propertyCanRevert(name: String): Bool;
    public function propertyGetRevert(name: String): Dynamic;
    public function save(): Int;
    public function saveCustom(file: String): Int;
    public function setInitialValue(name: String, value: Dynamic): Void;
    public function setOrder(name: String, position: Int): Void;
    public function setSetting(name: String, value: Dynamic): Void;
    @:native("__new")
    public function new();
}
