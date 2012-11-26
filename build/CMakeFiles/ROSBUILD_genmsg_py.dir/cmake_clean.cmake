FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/Controller_Core2/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/Controller_Core2/msg/__init__.py"
  "../src/Controller_Core2/msg/_waypoint.py"
  "../src/Controller_Core2/msg/_channel_values.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
