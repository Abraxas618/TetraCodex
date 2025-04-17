# Configuration file for the Sphinx documentation builder.

project = 'TetraCube'
author = 'Michael Tass MacDonald (Abraxas618 / BaramayStation)'
release = '1.0.0'

extensions = [
    'myst_parser',
    'sphinx_copybutton',
]

templates_path = ['_templates']
exclude_patterns = []

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

def setup(app):
    app.add_css_file('custom.css')
