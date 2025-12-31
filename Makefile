SHELL := /bin/bash

# Default target
.PHONY: all
all: build

# Build the CV PDF using latexmk if available, otherwise fall back to lualatex
.PHONY: build
build:
	@if command -v latexmk >/dev/null 2>&1; then \
	  echo "[build] Using latexmk (LuaLaTeX)"; \
	  latexmk -lualatex -interaction=nonstopmode -halt-on-error -file-line-error cv.tex; \
	elif command -v lualatex >/dev/null 2>&1; then \
	  echo "[build] Using lualatex directly (run twice)"; \
	  lualatex -interaction=nonstopmode -halt-on-error -file-line-error cv.tex; \
	  lualatex -interaction=nonstopmode -halt-on-error -file-line-error cv.tex; \
	else \
	  echo "Error: Neither latexmk nor lualatex found. Please install MacTeX/TeX Live."; \
	  exit 1; \
	fi

# Clean aux files
.PHONY: clean
clean:
	@if command -v latexmk >/dev/null 2>&1; then \
	  latexmk -C; \
	else \
	  rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz; \
	fi

