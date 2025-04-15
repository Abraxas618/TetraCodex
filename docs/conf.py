# -- Project Information -----------------------------------------------------

project = 'TetraCodex'
copyright = '2025, Michael Tass MacDonald'
author = 'Michael Tass MacDonald (Abraxas618)'
release = 'v1.0'

# -- General Configuration ---------------------------------------------------

extensions = [
    'myst_parser',
]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# -- MyST Configuration ------------------------------------------------------

myst_enable_extensions = [
    "deflist",
    "fieldlist",
    "html_admonition",
    "html_image",
]

source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}
