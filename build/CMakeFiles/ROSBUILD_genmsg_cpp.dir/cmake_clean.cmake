FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/Controller_Core2/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/Controller_Core2/waypoint.h"
  "../msg_gen/cpp/include/Controller_Core2/channel_values.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
