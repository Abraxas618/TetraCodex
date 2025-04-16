# -- Project Information -----------------------------------------------------
project = 'TetraCodex'
author = 'Michael Tass MacDonald (Abraxas618)'
release = 'v1.0'

# -- General Configuration ---------------------------------------------------
extensions = ['myst_parser']
templates_path = ['_templates']
exclude_patterns = []

# -- HTML Output -------------------------------------------------------------
html_theme = 'furo'
html_theme_options = {
    "sidebar_hide_name": True,
    # Logos removed to prevent duplication
}

html_title = "Codex R&D Vault"
# html_logo = "_static/UnimetrixCube.png"  # Commented out to avoid duplication
# html_favicon = "_static/UnimetrixCube.png"  # Optional
html_static_path = ['_static']
html_css_files = ['custom.css']

# -- Source Suffix Support ---------------------------------------------------
source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}
