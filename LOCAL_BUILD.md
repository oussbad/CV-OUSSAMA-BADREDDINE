Local build instructions

Prereqs
- Install a LaTeX distribution with LuaLaTeX support.
  - macOS: `brew install --cask mactex-no-gui` (or full MacTeX)
  - Linux: TeX Live with `lualatex`, `latexmk` and common packages
- Ensure packages are available: `fontawesome`, `babel-french`, `tikz`, `tcolorbox`, `etoolbox`, `xcolor`, `longtable`, `geometry`, `fontspec`.

Fonts
- The class is configured with `localFont`, using fonts from `./fonts`.
- Do not move the `fonts` folder; compile from the project root so the relative path works.

Build
- Easiest: `make` (uses `latexmk` if present, falls back to `lualatex`)
- Direct: `latexmk -lualatex cv.tex`
- Or: `lualatex cv.tex` (run twice)

Output
- The PDF will be `cv.pdf` in this folder.

Notes
- If you prefer an absolute font path, edit `awesome-source-cv.cls` and change `Path = fonts/` to `Path = /Users/oussamabadreddine/Downloads/OUSSAMA_BADREDDINE/fonts/` (not recommended; less portable).
- The document is designed for LuaLaTeX. Do not use pdfLaTeX.

