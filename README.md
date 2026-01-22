# ImC Image Converter

Fast, simple image format conversion for files. Built on Pillow and designed for clean CLI usage.

## Features
- Convert between many formats (`png`, `jpg`, `webp`, and more).
- Batch conversion for files and directories.
- Optional recursive traversal.
- Optional removal of source files after successful conversion.

## Setup
```bash
pip install -r requirements.txt
```

## Global Installation(Recommended: pipx)
The most stable cross-platform install is `pipx` because it isolates dependencies and exposes a clean command.

### macOS / Linux
```bash
./scripts/install.sh
```

### Windows (PowerShell)
```powershell
.\scripts\install.ps1
```

After install, use like:
```bash
imc --help
imc convert image.webp --to png
```

## Quick Start CLI without Installation
```bash
python main.py list-formats
python main.py convert image.webp --to png
python main.py convert images/ --to jpg --recursive --output out
python main.py convert image.png --to webp --remove-source
```

## Commands
| Command | Description | Example |
| --- | --- | --- |
| `list-formats` | List all supported extensions. | `python main.py list-formats` |
| `convert` | Convert files or directories to a target format. | `python main.py convert images/ --to png` |

## Flags (convert)
| Flag | Alias | Type | Default | Description |
| --- | --- | --- | --- | --- |
| `--to` | `-t` | string | required | Target extension (e.g. `png`, `jpg`, `webp`). |
| `--output` | `-o` | path | none | Output directory or file path. |
| `--recursive` | `-r` | boolean | `false` | Traverse folders recursively. |
| `--overwrite` |  | boolean | `false` | Overwrite existing files. |
| `--remove-source` |  | boolean | `false` | Remove source files after successful conversion. |
| `--quality` |  | integer | none | Quality for JPEG/WEBP/AVIF (1-100). |

## Output Rules
- If `--output` is omitted, converted files are saved next to their sources.
- If `--output` is a directory, outputs go inside it.
- If converting a directory with `--recursive`, the folder structure is preserved inside the output directory.
- If multiple inputs are provided, `--output` must be a directory.
- If a folder input is provided, `--output` must be a directory.

## Usage Examples
Convert a single file to PNG:
```bash
python main.py convert image.webp --to png
```

Convert a folder recursively and delete originals:
```bash
python main.py convert photos/ --to jpg --recursive --remove-source
```

Save outputs to a different directory:
```bash
python main.py convert photos/ --to webp --recursive --output converted/
```

Set quality for JPEG/WEBP/AVIF:
```bash
python main.py convert image.png --to jpg --quality 85
```

## CLI Name
The global command name is `imc`.

## Notes
- Use `list-formats` to see the exact extensions supported on your machine.
