FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/Controller_Core/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/Controller_Core/msg/__init__.py"
  "../src/Controller_Core/msg/_channel_values.py"
  "../src/Controller_Core/msg/_waypoint.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
