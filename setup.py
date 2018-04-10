from distutils.core import setup
import py2exe

setup(console=["Logo_Interactivo_v0.py"],
      data_files=[("files",["tweets.csv","selector_v0.csv"])]
)