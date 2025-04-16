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
    "navigation_with_keys": True,  # optional: keyboard nav
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

# -- Optional: For long-term scalability -------------------------------------

# Enable heading anchors for Markdown if you use deep nested docs
myst_enable_extensions = [
    "deflist",
    "html_admonition",
    "html_image",
    "colon_fence",
    "smartquotes",
]

# Optional: Localization structure (future multi-lang support)
# language = 'en'

# Optional: Custom sidebar title override (instead of 'Docs » TetraCodex')
# html_context = {
#     "display_github": True,
#     "github_user": "Abraxas618",
#     "github_repo": "TetraCodex",
#     "github_version": "main",
#     "conf_py_path": "/docs/",
# }

