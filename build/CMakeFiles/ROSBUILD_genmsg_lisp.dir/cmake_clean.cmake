FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/Controller_Core2/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/waypoint.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_waypoint.lisp"
  "../msg_gen/lisp/channel_values.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_channel_values.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
