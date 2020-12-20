# cli_scene_segmentation_worker
A MCAI worker to perform scene segmentation into shots

## Examples

### Analyzes video for changes in average frame intensity/brightness
```bash
export SOURCE_PATH=input/video.mp4
export DESTINATION_FOLDER=destination/folder/ 
RUST_LOG=debug SOURCE_ORDERS=examples/detect-threshold.json command_line_worker
```

### Analyzes video based on changes between frames in the HSV color space
```bash
export SOURCE_PATH=input/video.mp4
export DESTINATION_FOLDER=destination/folder/ 
RUST_LOG=debug SOURCE_ORDERS=examples/detect-content.json command_line_worker
```