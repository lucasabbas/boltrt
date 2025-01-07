package bolt.godot;

class EditorSettingsSignalNames {
    public static var settingsChanged: String = "settings_changed";
}
@:native("godot.EditorSettings")
extern class EditorSettings extends Resource {
    public var docksFilesystemAlwaysShowFolders: Bool;
    public var docksFilesystemThumbnailSize: Int;
    public var docksPropertyEditorAutoRefreshInterval: Float;
    public var docksPropertyEditorSubresourceHueTint: Float;
    public var docksSceneTreeStartCreateDialogFullyExpanded: Bool;
    public var editors2dBoneColor1: Color;
    public var editors2dBoneColor2: Color;
    public var editors2dBoneIkColor: Color;
    public var editors2dBoneOutlineColor: Color;
    public var editors2dBoneOutlineSize: Int;
    public var editors2dBoneSelectedColor: Color;
    public var editors2dBoneWidth: Int;
    public var editors2dConstrainEditorView: Bool;
    public var editors2dGridColor: Color;
    public var editors2dGuidesColor: Color;
    public var editors2dPanSpeed: Int;
    public var editors2dScrollToPan: Bool;
    public var editors2dSimplePanning: Bool;
    public var editors2dSmartSnappingLineColor: Color;
    public var editors2dViewportBorderColor: Color;
    public var editors2dWarpedMousePanning: Bool;
    public var editors3dDefaultFov: Float;
    public var editors3dDefaultZFar: Float;
    public var editors3dDefaultZNear: Float;
    public var editors3dFreelookFreelookActivationModifier: Int;
    public var editors3dFreelookFreelookBaseSpeed: Float;
    public var editors3dFreelookFreelookInertia: Float;
    public var editors3dFreelookFreelookNavigationScheme: Int;
    public var editors3dFreelookFreelookSensitivity: Float;
    public var editors3dFreelookFreelookSpeedZoomLink: Bool;
    public var editors3dGridDivisionLevelBias: Float;
    public var editors3dGridDivisionLevelMax: Int;
    public var editors3dGridDivisionLevelMin: Int;
    public var editors3dGridSize: Int;
    public var editors3dGridXyPlane: Bool;
    public var editors3dGridXzPlane: Bool;
    public var editors3dGridYzPlane: Bool;
    public var editors3dLightmapBakingNumberOfCpuThreads: Int;
    public var editors3dNavigationEmulate3ButtonMouse: Bool;
    public var editors3dNavigationEmulateNumpad: Bool;
    public var editors3dNavigationInvertXAxis: Bool;
    public var editors3dNavigationInvertYAxis: Bool;
    public var editors3dNavigationNavigationScheme: Int;
    public var editors3dNavigationOrbitModifier: Int;
    public var editors3dNavigationPanModifier: Int;
    public var editors3dNavigationWarpedMousePanning: Bool;
    public var editors3dNavigationZoomModifier: Int;
    public var editors3dNavigationZoomStyle: Int;
    public var editors3dNavigationFeelOrbitInertia: Float;
    public var editors3dNavigationFeelOrbitSensitivity: Float;
    public var editors3dNavigationFeelTranslationInertia: Float;
    public var editors3dNavigationFeelZoomInertia: Float;
    public var editors3dPrimaryGridColor: Color;
    public var editors3dPrimaryGridSteps: Int;
    public var editors3dSecondaryGridColor: Color;
    public var editors3dSelectionBoxColor: Color;
    public var editors3dGizmosGizmoColorsInstanced: Color;
    public var editors3dGizmosGizmoColorsJoint: Color;
    public var editors3dGizmosGizmoColorsShape: Color;
    public var editorsAnimationAutorenameAnimationTracks: Bool;
    public var editorsAnimationConfirmInsertTrack: Bool;
    public var editorsAnimationDefaultCreateBezierTracks: Bool;
    public var editorsAnimationDefaultCreateResetTracks: Bool;
    public var editorsAnimationOnionLayersFutureColor: Color;
    public var editorsAnimationOnionLayersPastColor: Color;
    public var editorsGridMapPickDistance: Float;
    public var editorsGridMapPreviewSize: Int;
    public var editorsPolyEditorPointGrabRadius: Int;
    public var editorsPolyEditorShowPreviousOutline: Bool;
    public var editorsVisualEditorsMinimapOpacity: Float;
    public var filesystemDirectoriesAutoscanProjectPath: String;
    public var filesystemDirectoriesDefaultProjectPath: String;
    public var filesystemFileDialogDisplayMode: Int;
    public var filesystemFileDialogShowHiddenFiles: Bool;
    public var filesystemFileDialogThumbnailSize: Int;
    public var filesystemOnSaveCompressBinaryResources: Bool;
    public var filesystemOnSaveSafeSaveOnBackupThenRename: Bool;
    public var interfaceEditorAcceptDialogCancelOkButtons: Int;
    public var interfaceEditorAutomaticallyOpenScreenshots: Bool;
    public var interfaceEditorCodeFont: String;
    public var interfaceEditorCodeFontSize: Int;
    public var interfaceEditorCustomDisplayScale: Float;
    public var interfaceEditorDimEditorOnDialogPopup: Bool;
    public var interfaceEditorDisplayScale: Int;
    public var interfaceEditorEditorLanguage: String;
    public var interfaceEditorFontAntialiased: Bool;
    public var interfaceEditorFontHinting: Int;
    public var interfaceEditorLowProcessorModeSleepUsec: Float;
    public var interfaceEditorMainFont: String;
    public var interfaceEditorMainFontBold: String;
    public var interfaceEditorMainFontSize: Int;
    public var interfaceEditorQuitConfirmation: Bool;
    public var interfaceEditorSaveEachSceneOnQuit: Bool;
    public var interfaceEditorSeparateDistractionMode: Bool;
    public var interfaceEditorUnfocusedLowProcessorModeSleepUsec: Float;
    public var interfaceInspectorMaxArrayDictionaryItemsPerPage: Int;
    public var interfaceSceneTabsMinimumWidth: Int;
    public var interfaceSceneTabsResizeIfManyTabs: Bool;
    public var interfaceSceneTabsShowScriptButton: Bool;
    public var interfaceSceneTabsShowThumbnailOnHover: Bool;
    public var interfaceThemeAccentColor: Color;
    public var interfaceThemeAdditionalSpacing: Float;
    public var interfaceThemeBaseColor: Color;
    public var interfaceThemeBorderSize: Int;
    public var interfaceThemeContrast: Float;
    public var interfaceThemeCustomTheme: String;
    public var interfaceThemeHighlightTabs: Bool;
    public var interfaceThemeIconAndFontColor: Int;
    public var interfaceThemePreset: String;
    public var interfaceThemeRelationshipLineOpacity: Float;
    public var interfaceThemeUseGraphNodeHeaders: Bool;
    public var interfaceTouchscreenEnableLongPressAsRightClick: Bool;
    public var interfaceTouchscreenEnablePanAndScaleGestures: Bool;
    public var interfaceTouchscreenIncreaseScrollbarTouchArea: Bool;
    public var interfaceTouchscreenScaleGizmoHandles: Float;
    public var networkDebugRemoteHost: String;
    public var networkDebugRemotePort: Int;
    public var networkHttpProxyHost: String;
    public var networkHttpProxyPort: Int;
    public var networkSslEditorSslCertificates: String;
    public var projectManagerSortingOrder: Int;
    public var runAutoSaveSaveBeforeRunning: Bool;
    public var runOutputAlwaysClearOutputOnPlay: Bool;
    public var runOutputAlwaysCloseOutputOnStop: Bool;
    public var runOutputAlwaysOpenOutputOnPlay: Bool;
    public var runOutputFontSize: Int;
    public var runWindowPlacementAndroidWindow: Int;
    public var runWindowPlacementRect: Int;
    public var runWindowPlacementRectCustomPosition: Vector2;
    public var runWindowPlacementScreen: Int;
    public var textEditorAppearanceCodeFolding: Bool;
    public var textEditorAppearanceLineLengthGuidelineHardColumn: Int;
    public var textEditorAppearanceLineLengthGuidelineSoftColumn: Int;
    public var textEditorAppearanceLineNumbersZeroPadded: Bool;
    public var textEditorAppearanceShowBookmarkGutter: Bool;
    public var textEditorAppearanceShowBreakpointGutter: Bool;
    public var textEditorAppearanceShowInfoGutter: Bool;
    public var textEditorAppearanceShowLineLengthGuidelines: Bool;
    public var textEditorAppearanceShowLineNumbers: Bool;
    public var textEditorAppearanceWordWrap: Bool;
    public var textEditorCompletionAddTypeHints: Bool;
    public var textEditorCompletionAutoBraceComplete: Bool;
    public var textEditorCompletionCallhintTooltipOffset: Vector2;
    public var textEditorCompletionCodeCompleteDelay: Float;
    public var textEditorCompletionCompleteFilePaths: Bool;
    public var textEditorCompletionIdleParseDelay: Float;
    public var textEditorCompletionPutCallhintTooltipBelowCurrentLine: Bool;
    public var textEditorCompletionUseSingleQuotes: Bool;
    public var textEditorCursorBlockCaret: Bool;
    public var textEditorCursorCaretBlink: Bool;
    public var textEditorCursorCaretBlinkSpeed: Float;
    public var textEditorCursorRightClickMovesCaret: Bool;
    public var textEditorCursorScrollPastEndOfFile: Bool;
    public var textEditorFilesAutoReloadAndParseScriptsOnSave: Bool;
    public var textEditorFilesAutoReloadScriptsOnExternalChange: Bool;
    public var textEditorFilesAutosaveIntervalSecs: Int;
    public var textEditorFilesRestoreScriptsOnLoad: Bool;
    public var textEditorFilesTrimTrailingWhitespaceOnSave: Bool;
    public var textEditorHelpHelpFontSize: Int;
    public var textEditorHelpHelpSourceFontSize: Int;
    public var textEditorHelpHelpTitleFontSize: Int;
    public var textEditorHelpShowHelpIndex: Bool;
    public var textEditorHighlightingBackgroundColor: Color;
    public var textEditorHighlightingBaseTypeColor: Color;
    public var textEditorHighlightingBookmarkColor: Color;
    public var textEditorHighlightingBraceMismatchColor: Color;
    public var textEditorHighlightingBreakpointColor: Color;
    public var textEditorHighlightingCaretBackgroundColor: Color;
    public var textEditorHighlightingCaretColor: Color;
    public var textEditorHighlightingCodeFoldingColor: Color;
    public var textEditorHighlightingCommentColor: Color;
    public var textEditorHighlightingCompletionBackgroundColor: Color;
    public var textEditorHighlightingCompletionExistingColor: Color;
    public var textEditorHighlightingCompletionFontColor: Color;
    public var textEditorHighlightingCompletionScrollColor: Color;
    public var textEditorHighlightingCompletionSelectedColor: Color;
    public var textEditorHighlightingControlFlowKeywordColor: Color;
    public var textEditorHighlightingCurrentLineColor: Color;
    public var textEditorHighlightingEngineTypeColor: Color;
    public var textEditorHighlightingExecutingLineColor: Color;
    public var textEditorHighlightingFunctionColor: Color;
    public var textEditorHighlightingHighlightAllOccurrences: Bool;
    public var textEditorHighlightingHighlightCurrentLine: Bool;
    public var textEditorHighlightingHighlightTypeSafeLines: Bool;
    public var textEditorHighlightingKeywordColor: Color;
    public var textEditorHighlightingLineLengthGuidelineColor: Color;
    public var textEditorHighlightingLineNumberColor: Color;
    public var textEditorHighlightingMarkColor: Color;
    public var textEditorHighlightingMemberVariableColor: Color;
    public var textEditorHighlightingNumberColor: Color;
    public var textEditorHighlightingSafeLineNumberColor: Color;
    public var textEditorHighlightingSearchResultBorderColor: Color;
    public var textEditorHighlightingSearchResultColor: Color;
    public var textEditorHighlightingSelectionColor: Color;
    public var textEditorHighlightingStringColor: Color;
    public var textEditorHighlightingSymbolColor: Color;
    public var textEditorHighlightingSyntaxHighlighting: Bool;
    public var textEditorHighlightingTextColor: Color;
    public var textEditorHighlightingTextSelectedColor: Color;
    public var textEditorHighlightingUserTypeColor: Color;
    public var textEditorHighlightingWordHighlightedColor: Color;
    public var textEditorIndentAutoIndent: Bool;
    public var textEditorIndentConvertIndentOnSave: Bool;
    public var textEditorIndentDrawSpaces: Bool;
    public var textEditorIndentDrawTabs: Bool;
    public var textEditorIndentSize: Int;
    public var textEditorIndentType: Int;
    public var textEditorNavigationDragAndDropSelection: Bool;
    public var textEditorNavigationMinimapWidth: Int;
    public var textEditorNavigationMouseExtraButtonsNavigateHistory: Bool;
    public var textEditorNavigationShowMinimap: Bool;
    public var textEditorNavigationSmoothScrolling: Bool;
    public var textEditorNavigationStayInScriptEditorOnNodeSelected: Bool;
    public var textEditorNavigationVScrollSpeed: Int;
    public var textEditorScriptListShowMembersOverview: Bool;
    public var textEditorThemeColorTheme: String;
    public var textEditorThemeLineSpacing: Int;
    public var textEditorToolsSortMembersOutlineAlphabetically: Bool;
    public function addPropertyInfo(info: Map<Dynamic, Dynamic>): Void;
    public function erase(property: String): Void;
    public function getFavorites(): lua.Table<Int, String>;
    public function getProjectMetadata(section: String, key: String, Default: Dynamic): Dynamic;
    public function getProjectSettingsDir(): String;
    public function getRecentDirs(): lua.Table<Int, String>;
    public function getSetting(name: String): Dynamic;
    public function getSettingsDir(): String;
    public function hasSetting(name: String): Bool;
    public function propertyCanRevert(name: String): Bool;
    public function propertyGetRevert(name: String): Dynamic;
    public function setFavorites(dirs: lua.Table<Int, String>): Void;
    public function setInitialValue(name: String, value: Dynamic, updateCurrent: Bool): Void;
    public function setProjectMetadata(section: String, key: String, data: Dynamic): Void;
    public function setRecentDirs(dirs: lua.Table<Int, String>): Void;
    public function setSetting(name: String, value: Dynamic): Void;
    @:native("__new")
    public function new();
}
