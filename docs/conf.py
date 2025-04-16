# -- Project Information -----------------------------------------------------
project = 'TetraCodex'
author = 'Michael Tass MacDonald (Abraxas618)'
release = 'v1.0'

# -- General Configuration ---------------------------------------------------
extensions = ['myst_parser']
templates_path = ['_templates']  # ✅ Enables sidebar cube override
exclude_patterns = []

# -- HTML Output -------------------------------------------------------------
html_theme = 'furo'
html_theme_options = {
    "sidebar_hide_name": True,
    # No logos defined here; handled in layout.html
}

html_title = "Codex R&D Vault"
# html_logo = "_static/UnimetrixCube.png"      # ✅ Keep this disabled to avoid conflict
# html_favicon = "_static/UnimetrixCube.png"   # Optional: enable if you want browser tab icon
html_static_path = ['_static']
html_css_files = ['custom.css']  # ✅ Your SCP theme

# -- Source Suffix Support ---------------------------------------------------
source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}
