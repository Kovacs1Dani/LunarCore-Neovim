<div align="center">
  <h1>✨ LunarCore Neovim ✨</h1>
  <p><i>A modern, highly-aesthetic, IDE-like Neovim configuration built for speed and beauty.</i></p>
  <p>Powered by <b>Lazy.nvim</b> & <b>Oxocarbon</b></p>
</div>

---

## 🌌 Philosophy

LunarCore is designed to strip away the clunky terminal feel of traditional Vim and replace it with a sleek, modern, "floating" UI inspired by modern editors like VSCode, while maintaining the blistering speed and keyboard-centric workflow of Neovim.

Everything from the command line to the completion engine has been visually overhauled with consistent rounded corners, vibrant icons, and unobtrusive floating windows.

## 🚀 Key Features

### 🎨 Modern Aesthetic
*   **Oxocarbon Theme**: A stunning, high-contrast dark theme.
*   **Rounded Geometry**: Every popup, hover window, and menu uses smooth rounded borders for a cohesive look.
*   **Noice.nvim UI Overhaul**: The command line (`:`) is now a centralized floating palette, and all messages/notifications use slick, animated toasts.
*   **Bubble Statusline**: A completely customized `Lualine` featuring floating "capsules" instead of hard edges.
*   **Bufferline Tabs**: VSCode-style file tabs at the top, complete with file icons and LSP diagnostic indicators.
*   **Rainbow Delimiters**: Nested brackets and parentheses are color-coded to match the theme, making complex logic easy to read at a glance.

### 🧠 Intelligent Completion
*   **VSCode Iconography**: `nvim-cmp` is supercharged with `lspkind`, providing standard `codicons` (boxes for variables, cubes for classes) so you instantly know what you're completing.
*   **Live Color Swatches**: Typing a hex code or CSS color? `nvim-highlight-colors` renders a preview square directly inside your completion dropdown.
*   **Ghost Text**: See a faint, inline preview of the completion suggestion before you even press enter.

### 🔭 Powerful Navigation
*   **Floating Telescope**: A beautiful, horizontally laid out `Telescope` fuzzy finder that floats elegantly in your editor with the prompt at the top and the preview perfectly sized on the right.
*   **File Explorer**: `Neo-tree` integration for a clean sidebar.

### 🐞 Pro-Level Debugging (DAP)
*   **Visual Breakpoints**: Highly visible, Oxocarbon-themed breakpoint indicators (●) in the gutter.
*   **Debug UI**: Full `nvim-dap-ui` integration that automatically opens when a debugging session starts, complete with virtual text evaluating variables inline.

## 📦 Installation

**Prerequisites:**
*   Neovim `0.9.0` or higher
*   A NerdFont installed in your terminal (for the icons)
*   `git`, `make`, `gcc`, `ripgrep`, `fd`

**Setup:**

1.  Backup your existing configuration (if any):
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  Clone this repository:
    ```bash
    git clone https://github.com/Kovacs1Dani/LunarCore-Neovim.git ~/.config/nvim
    ```

3.  Open Neovim:
    ```bash
    nvim
    ```
    *`Lazy.nvim` will automatically bootstrap and install all plugins. Restart once it finishes.*

## ⌨️ Quick Keymaps

| Key | Action |
| :--- | :--- |
| `<leader>ff` | Find Files (Telescope) |
| `<leader>fg` | Live Grep (Telescope) |
| `<leader>e` | Open floating LSP diagnostic |
| `<F5>` | Start/Continue Debugging |
| `<leader>b` | Toggle Breakpoint |
| `<leader>nd` | Dismiss all Notifications |
| `<Ctrl-\>` | Toggle floating terminal |

---
*Crafted for developers who want it fast, but also want it to look damn good.*
