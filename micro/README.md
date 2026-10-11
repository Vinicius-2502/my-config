# Micro Editor Configuration - Zed Appearance

This configuration makes Micro editor resemble the Zed editor in appearance while maintaining VS Code-like keybindings for familiarity.

## Zed-Inspired Appearance

- **Color Scheme**: `one-dark` (clean, modern dark theme similar to Zed's aesthetic)
- **UI Minimalism**: Reduced status bar clutter, hidden scrollbar
- **Typography**: 2-space tabs (common in modern codebases)
- **Visual Aids**: Cursor line highlighting, matching braces, syntax highlighting

## Files

- `settings.json`: Editor settings optimized for Zed-like appearance
- `bindings.json`: VS Code-inspired keybindings for familiarity
- `README.md`: This file

## Usage

To use this configuration, launch Micro with:

```bash
micro -config-dir ~/dev/my-config/micro [file]
```

Or set the MICRO_CONFIG_DIR environment variable:

```bash
export MICRO_CONFIG_DIR=~/dev/my-config/micro
micro [file]
```

## Zed-Inspired Settings

The configuration includes:

- **Color Scheme**: `one-dark` - Clean dark theme with balanced syntax coloring
- **Tab Size**: 2 spaces (modern standard)
- **Indent Settings**: Spaces instead of tabs
- **UI Features**: 
  - Cursor line highlighting (subtle focus guide)
  - Matching braces (code structure awareness)
  - Minimal status bar (filename + position only)
  - Hidden scrollbar (cleaner appearance)
  - Mouse support enabled
- **Behavior**: 
  - Auto-save after 1 second delay
  - Backup files enabled
  - Smart paste to prevent formatting issues
  - Incremental search with case-insensitive by default

## Keybindings (VS Code-like for familiarity)

While the appearance is Zed-inspired, keybindings follow VS Code conventions for ease of transition:

- **File Operations**: Ctrl+S (Save), Ctrl+N (New Tab), Ctrl+W (Close)
- **Editing**: Ctrl+Z (Undo), Ctrl+Y (Redo), Ctrl+X/Ctrl+C/Ctrl+V (Cut/Copy/Paste)
- **Selection**: Ctrl+A (Select All), Shift+Arrow (extend selection)
- **Navigation**: Ctrl+G (Go to Line), Ctrl+F (Find), Ctrl+H (Replace)
- **Code**: Ctrl+K Ctrl+C (Comment), Ctrl+K Ctrl+U (Uncomment), Tab/Shift+Tab (Indent/Unindent)
- **Tabs**: Ctrl+Tab (Next Tab), Ctrl+Shift+Tab (Previous Tab)
- **UI**: F1 (Help), Ctrl+Shift+P (Command Panel)

## Notes

1. The `one-dark` color scheme provides a clean, modern dark appearance reminiscent of Zed
2. Status bar is minimized to show only essential information (filename and cursor position)
3. Some VS Code-specific features (integrated terminal, debugging) are not available in Micro
4. Keybindings may need adjustment based on your terminal's shortcut conflicts
5. For true Zed-like font rendering, consider using a programming font like JetBrains Mono, Fira Code, or Hack in your terminal emulator

## Customization

Feel free to modify the settings.json file to further tweak the appearance:
- Adjust `"tabsize"` for different indentation preferences
- Modify `"statusformatl"` and `"statusformatr"` for different status bar information
- Try other dark schemes like `"darcula"`, `"gruvbox"`, or `"monokai"` if preferred