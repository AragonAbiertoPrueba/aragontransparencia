# -*- mode: python -*-

block_cipher = None


a = Analysis(['Logo_Interactivo_v0.py'],
             pathex=['C:\\Users\\Eduardo\\Desktop\\INNOVART\\LOGO\\value_from_txt_v0\\value_from_txt_v0'],
             binaries=[],
             datas=[],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          name='Logo_Interactivo_v0',
          debug=False,
          strip=False,
          upx=True,
          runtime_tmpdir=None,
          console=True )
