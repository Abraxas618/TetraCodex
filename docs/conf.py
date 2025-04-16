
# -- Project Information -----------------------------------------------------

project = 'TetraCodex'
author = 'Michael Tass MacDonald (Abraxas618)'
release = 'v1.0'

# -- General Configuration ---------------------------------------------------

extensions = [
    'myst_parser',
]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------

html_theme = 'furo'
html_theme_options = {
    "sidebar_hide_name": True,
    "light_logo": "UnimetrixCube.png",
    "dark_logo": "UnimetrixCube.png",
}

html_title = "Codex R&D Vault"
html_logo = "_static/UnimetrixCube.png"
html_favicon = "_static/UnimetrixCube.png"
html_static_path = ['_static']
html_css_files = ['custom.css']

# -- Source Suffix Support ---------------------------------------------------

source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}
