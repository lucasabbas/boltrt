package lucidKit.godot;

@:native("godot.EditorVCSInterface")
extern class EditorVCSInterface extends Object {
    public function CheckoutBranch(branchName: String): Bool;
    public function Commit(msg: String): Void;
    public function CreateBranch(branchName: String): Void;
    public function CreateRemote(remoteName: String, remoteUrl: String): Void;
    public function DiscardFile(filePath: String): Void;
    public function Fetch(remote: String): Void;
    public function GetBranchList(): Array<Dynamic>;
    public function GetCurrentBranchName(): String;
    public function GetDiff(identifier: String, area: Int): Array<Dynamic>;
    public function GetLineDiff(filePath: String, text: String): Array<Dynamic>;
    public function GetModifiedFilesData(): Array<Dynamic>;
    public function GetPreviousCommits(maxCommits: Int): Array<Dynamic>;
    public function GetRemotes(): Array<Dynamic>;
    public function GetVcsName(): String;
    public function Initialize(projectPath: String): Bool;
    public function Pull(remote: String): Void;
    public function Push(remote: String, force: Bool): Void;
    public function RemoveBranch(branchName: String): Void;
    public function RemoveRemote(remoteName: String): Void;
    public function SetCredentials(username: String, password: String, sshPublicKeyPath: String, sshPrivateKeyPath: String, sshPassphrase: String): Void;
    public function ShutDown(): Bool;
    public function StageFile(filePath: String): Void;
    public function UnstageFile(filePath: String): Void;
    public function addDiffHunksIntoDiffFile(diffFile: Map<Dynamic, Dynamic>, diffHunks: Array<Dynamic>): Map<Dynamic, Dynamic>;
    public function addLineDiffsIntoDiffHunk(diffHunk: Map<Dynamic, Dynamic>, lineDiffs: Array<Dynamic>): Map<Dynamic, Dynamic>;
    public function createCommit(msg: String, author: String, id: String, unixTimestamp: Int, offsetMinutes: Int): Map<Dynamic, Dynamic>;
    public function createDiffFile(newFile: String, oldFile: String): Map<Dynamic, Dynamic>;
    public function createDiffHunk(oldStart: Int, newStart: Int, oldLines: Int, newLines: Int): Map<Dynamic, Dynamic>;
    public function createDiffLine(newLineNo: Int, oldLineNo: Int, content: String, status: String): Map<Dynamic, Dynamic>;
    public function createStatusFile(filePath: String, changeType: Int, area: Int): Map<Dynamic, Dynamic>;
    public function popupError(msg: String): Void;
    @:native("__new")
    public function new();
}
