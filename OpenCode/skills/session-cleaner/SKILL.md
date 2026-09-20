# Session Cleaner Skill

This skill provides guidance on how to delete OpenCode sessions based on their titles.

## Purpose

Remove unwanted sessions (e.g., test sessions, greetings, duplicates) while preserving important ones.

## Usage

To delete sessions matching specific titles, you can use the following bash command pattern:

```bash
opencode session list | awk -F'  +' 'NR>2 && $1 ~ /^ses_/ {
title=$2;
# Add your title matching conditions here
if (title ~ /^New session/ || title == "Greeting" || title == "Saudação inicial" || title == "Saudação casual" || title == "Listar conteúdo da pasta downloads" || title == "Saludo" || title == "Saudação") {
print $1
}
}' | grep -v "ses_$(opencode session list | awk -F'  +' '$2 ~ /New session -/ && $1 ~ /^ses_/ {print $1; exit}')" | while read sid; do
  echo "Deleting $sid"
  opencode session delete "$sid"
done
```

### Explanation

1. **List sessions**: `opencode session list` outputs a table with columns: Session ID, Title, Updated.
2. **Parse lines**: Using `awk` with field separator of two or more spaces to extract Session ID (`$1`) and Title (`$2`).
3. **Filter by title**: Adjust the condition inside the `if` statement to match the titles you want to delete.
   - Examples: 
     - `title ~ /^New session/` matches any title starting with "New session".
     - `title == "Greeting"` matches exact title.
4. **Exclude current session**: The `grep -v` clause removes the current session (identified as the most recent "New session" line). You can modify this exclusion logic as needed.
5. **Delete**: For each session ID, call `opencode session delete <sessionID>`.

## Customization

- To delete different titles, edit the `if` condition.
- To keep additional sessions, add more `grep -v` filters with their session IDs.
- To run a dry‑run (see which sessions would be deleted without actually deleting), replace the `opencode session delete "$sid"` line with `echo "Would delete $sid"`.

## Safety

- Always verify the list of session IDs before deletion.
- The skill does not perform deletions automatically; you must execute the generated command.
- Consider backing up your session data (`~/.opencode-mem/`) if you need to restore later.

## Example: Delete only greetings

```bash
opencode session list | awk -F'  +' 'NR>2 && $1 ~ /^ses_/ {
if ($2 == "Greeting") print $1
}' | while read sid; do
  echo "Deleting greeting session $sid"
  opencode session delete "$sid"
done
```

## References

- `opencode session --help` for more session management commands.
- OpenCode memory configuration: `~/.config/opencode/opencode-mem.jsonc`

