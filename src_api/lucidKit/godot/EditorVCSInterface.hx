package lucidkit.godot;

@:native("godot.EditorVCSInterface")
extern class EditorVCSInterface extends Object {
    public function _checkout_branch(branch_name: String): Bool;
    public function _commit(msg: String): Void;
    public function _create_branch(branch_name: String): Void;
    public function _create_remote(remote_name: String, remote_url: String): Void;
    public function _discard_file(file_path: String): Void;
    public function _fetch(remote: String): Void;
    public function _get_branch_list(): Array<Dynamic>;
    public function _get_current_branch_name(): String;
    public function _get_diff(identifier: String, area: Int): Array<Dynamic>;
    public function _get_line_diff(file_path: String, text: String): Array<Dynamic>;
    public function _get_modified_files_data(): Array<Dynamic>;
    public function _get_previous_commits(max_commits: Int): Array<Dynamic>;
    public function _get_remotes(): Array<Dynamic>;
    public function _get_vcs_name(): String;
    public function _initialize(project_path: String): Bool;
    public function _pull(remote: String): Void;
    public function _push(remote: String, force: Bool): Void;
    public function _remove_branch(branch_name: String): Void;
    public function _remove_remote(remote_name: String): Void;
    public function _set_credentials(username: String, password: String, ssh_public_key_path: String, ssh_private_key_path: String, ssh_passphrase: String): Void;
    public function _shut_down(): Bool;
    public function _stage_file(file_path: String): Void;
    public function _unstage_file(file_path: String): Void;
    public function add_diff_hunks_into_diff_file(diff_file: Map<Dynamic, Dynamic>, diff_hunks: Array<Dynamic>): Map<Dynamic, Dynamic>;
    public function add_line_diffs_into_diff_hunk(diff_hunk: Map<Dynamic, Dynamic>, line_diffs: Array<Dynamic>): Map<Dynamic, Dynamic>;
    public function create_commit(msg: String, author: String, id: String, unix_timestamp: Int, offset_minutes: Int): Map<Dynamic, Dynamic>;
    public function create_diff_file(new_file: String, old_file: String): Map<Dynamic, Dynamic>;
    public function create_diff_hunk(old_start: Int, new_start: Int, old_lines: Int, new_lines: Int): Map<Dynamic, Dynamic>;
    public function create_diff_line(new_line_no: Int, old_line_no: Int, content: String, status: String): Map<Dynamic, Dynamic>;
    public function create_status_file(file_path: String, change_type: Int, area: Int): Map<Dynamic, Dynamic>;
    public function popup_error(msg: String): Void;
}
