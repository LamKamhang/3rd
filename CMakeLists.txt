cmake_minimum_required(VERSION 3.0)

project(
  manage3rd
  VERSION 0.1
  DESCRIPTION "manage 3rd party repos"
  LANGUAGES C CXX)

set(CUSTOM_CMAKE_PATH
  "${PROJECT_SOURCE_DIR}/cmake/"
  "${PROJECT_SOURCE_DIR}/3rd/")

list(PREPEND CMAKE_MODULE_PATH ${CUSTOM_CMAKE_PATH})
list(PREPEND CMAKE_PREFIX_PATH ${CUSTOM_CMAKE_PATH})

# add some basic cmake functions
include(utility)
add_custom_target(fetch_all3rd)
add_git_3rd_project(OpenVolumeMesh "ssh://git@ryon.ren:10022/mirrors/OpenVolumeMesh.git" "v2.1" GENERATE_TARGET)
add_git_3rd_project(amgcl "git@github.com:ddemidov/amgcl.git" "1.4.3" GENERATE_TARGET)
add_git_3rd_project(assimp "git@github.com:assimp/assimp.git" "v5.2.3" GENERATE_TARGET)
add_git_3rd_project(Catch2 "ssh://git@ryon.ren:10022/mirrors/Catch2.git"  "v2.13.7" GENERATE_TARGET)
add_git_3rd_project(eigen3   "ssh://git@ryon.ren:10022/mirrors/eigen3.git"   "3.4.0" GENERATE_TARGET)
add_git_3rd_project(autodiff "ssh://git@ryon.ren:10022/mirrors/autodiff.git" "v0.6.8"
  CMAKE_ARGS "-DAUTODIFF_BUILD_TESTS=OFF"
  CMAKE_ARGS "-DAUTODIFF_BUILD_PYTHON=OFF"
  CMAKE_ARGS "-DAUTODIFF_BUILD_EXAMPLES=OFF"
  CMAKE_ARGS "-DAUTODIFF_BUILD_DOCS=OFF"
  GENERATE_TARGET
  PATCH_COMMAND "git restore . && git apply ${CMAKE_CURRENT_SOURCE_DIR}/cmake/autodiff.patch && echo patch applied"
  )
add_git_3rd_project(bullet3 "git@github.com:bulletphysics/bullet3.git" "3.17" GENERATE_TARGET)
add_git_3rd_project(cgal "git@github.com:CGAL/cgal.git" "v5.4" GENERATE_TARGET)
add_git_3rd_project(cli11 "ssh://git@ryon.ren:10022/mirrors/CLI11.git" "v2.2.0"
  CMAKE_ARGS "-DCLI11_BUILD_EXAMPLES=OFF"
  CMAKE_ARGS "-DCLI11_BUILD_TESTS=OFF"
  CMAKE_ARGS "-DCLI11_BUILD_DOCS=OFF"
  GENERATE_TARGET
  )
add_git_3rd_project(fmt "ssh://git@ryon.ren:10022/mirrors/fmt.git" "8.0.1" GENERATE_TARGET)
add_git_3rd_project(glfw3 "ssh://git@ryon.ren:10022/mirrors/glfw.git" "3.3.4" GENERATE_TARGET)
add_git_3rd_project(oneTBB "git@github.com:oneapi-src/oneTBB.git" "v2021.3.0"
  CMAKE_ARGS "-DTBB_TEST=OFF" GENERATE_TARGET)
# add_git_3rd_project(oneDNN "git@github.com:oneapi-src/oneDNN.git" "graph-v0.2" GENERATE_TARGET)
# add_git_3rd_project(oneMKL "git@github.com:oneapi-src/oneMKL.git" "1539bca"
#   CMAKE_ARGS "-DBUILD_FUNCTIONAL_TESTS=OFF -DCMAKE_CXX_COMPILER=dpcpp" GENERATE_TARGET)
add_git_3rd_project(OpenMesh "ssh://git@ryon.ren:10022/mirrors/OpenMesh.git" "OpenMesh-8.1" GENERATE_TARGET)
add_git_3rd_project(pybind11 "git@github.com:pybind/pybind11.git" "v2.9.2" GENERATE_TARGET)
# add_git_3rd_project(rapidjson "git@github.com:Tencent/rapidjson.git" "00dbcf2c" GENERATE_TARGET) # 2021.8.13
add_git_3rd_project(nlohmann_json "git@github.com:nlohmann/json.git" "v3.10.5" GENERATE_TARGET)
# add_git_3rd_project(toml11  "git@github.com:ToruNiina/toml11.git" "v3.7.0" GENERATE_TARGET)
add_git_3rd_project(spdlog "ssh://git@ryon.ren:10022/mirrors/spdlog.git" "v1.9.2" GENERATE_TARGET)
add_git_3rd_project(spectra "git@github.com:yixuan/spectra.git" "v1.0.0" GENERATE_TARGET)
add_git_3rd_project(LBFGSpp "ssh://git@ryon.ren:10022/mirrors/LBFGSpp.git" "v0.1.0" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(tinyobjloader "git@github.com:tinyobjloader/tinyobjloader.git" "3e401b55a" GENERATE_TARGET) # 2021.8.27
add_git_3rd_project(voro "git@github.com:chr1shr/voro.git" "aa5f72233" GENERATE_TARGET) # 2021.7.4
add_git_3rd_project(suitesparse_wrapper "git@github.com:LamKamhang/suitesparse-wrapper.git" "b5977fb" GENERATE_TARGET)
add_git_3rd_project(nlopt "git@github.com:stevengj/nlopt.git" "304137ff" GENERATE_TARGET) # 2021.7.19

add_git_3rd_project(Trilinos "git@github.com:trilinos/Trilinos.git" "trilinos-release-13-0-1" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(TriWild "https://github.com/wildmeshing/TriWild" "d85ec7a" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(TetWild "https://github.com/Yixin-Hu/TetWild" "f6ca5d9" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(fTetWild "git@github.com:wildmeshing/fTetWild.git" "c0be02c" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(ccls "git@github.com:MaskRay/ccls.git" "0.20210330" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(libigl  "ssh://git@ryon.ren:10022/mirrors/libigl.git"   "v2.3.0" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(ImGuizmo "ssh://git@ryon.ren:10022/mirrors/ImGuizmo.git" "8afa1d70"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/libigl/external/imguizmo"
  DO_NOT_BUILD
  GENERATE_TARGET
  )
add_git_3rd_project(libigl-imgui "ssh://git@ryon.ren:10022/mirrors/libigl-imgui.git" "7e1053e7"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/libigl/external/libigl-imgui"
  DO_NOT_BUILD
  GENERATE_TARGET
  )
add_git_3rd_project(glm "git@github.com:g-truc/glm.git" "6ad79aae" DO_NOT_BUILD GENERATE_TARGET) # 2021.9.2
add_git_3rd_project(benchmark "git@github.com:google/benchmark.git" "v1.5.6" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(ceres-solver "git@github.com:ceres-solver/ceres-solver.git" "09ec499" GENERATE_TARGET) # 2022.2.18
# add_git_3rd_project(FlameGraph "git@github.com:brendangregg/FlameGraph.git" "810687f" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(geometry-central "git@github.com:nmwsharp/geometry-central.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(glad "git@github.com:LamKamhang/glad.git" "6ee1551" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(IPC "git@github.com:ipc-sim/IPC.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(nonmanifold-laplacian "git@github.com:nmwsharp/nonmanifold-laplacian.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(onedrive "git@github.com:abraunegg/onedrive.git" "v2.4.15" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(penrose "git@github.com:penrose/penrose.git" "f56d55f5" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(polyscope "git@github.com:nmwsharp/polyscope.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(qt-mvvm "git@github.com:gpospelov/qt-mvvm.git" "59f8083e" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(rectpack2D "git@github.com:TeamHypersomnia/rectpack2D.git" "9c7fe5d" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(sage "git://trac.sagemath.org/sage.git" "53285707f0" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(stb "git@github.com:nothings/stb.git" "c0c9826" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(Ipopt "git@github.com:coin-or/Ipopt.git" "releases/3.14.5" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(ThirdParty-ASL "git@github.com:coin-or-tools/ThirdParty-ASL.git" "releases/2.0.0" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(ThirdParty-HSL "git@github.com:coin-or-tools/ThirdParty-HSL.git" "9d85805" DO_NOT_BUILD GENERATE_TARGET) # releases/2.2.1
# add_git_3rd_project(ThirdParty-Metis "git@github.com:coin-or-tools/ThirdParty-Metis.git" "releases/2.0.0" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(ThirdParty-Mumps "git@github.com:coin-or-tools/ThirdParty-Mumps.git" "releases/3.0.2" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(Ipopt "git@github.com:LamKamhang/Ipopt-cmake-wrapper.git" "origin/master"
  GENERATE_TARGET
)
add_git_3rd_project(variational-surface-cutting "git@github.com:nmwsharp/variational-surface-cutting.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(imgui "git@github.com:ocornut/imgui.git" "v1.84.2"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/imgui_wrapper/imgui"
  DO_NOT_BUILD
  GENERATE_TARGET
  )
add_git_3rd_project(CoMISo "https://www.graphics.rwth-aachen.de:9000/CoMISo/CoMISo.git" "49a044a"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/CoMISo_wrapper/CoMISo"
  DO_NOT_BUILD
  GENERATE_TARGET
  )
add_git_3rd_project(apic2d "git@github.com:nepluno/apic2d.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(elmerfem "git@github.com:ElmerCSC/elmerfem.git" "origin/devel" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(femus "git@github.com:FeMTTU/femus.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(nanoflann "git@github.com:jlblancoc/nanoflann.git" "v1.4.2" GENERATE_TARGET)
add_git_3rd_project(raytracing.github.io "git@github.com:RayTracing/raytracing.github.io.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(jiong-group-seminar "ssh://git@ryon.ren:10022/JiongCHEN/group-seminar.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(pardiso "git@github.com:LamKamhang/pardiso.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(pagmo2 "git@github.com:esa/pagmo2.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(pygmo2 "git@github.com:esa/pygmo2.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(heyoka "git@github.com:bluescarni/heyoka.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)

# fetch_git_3rd_project(cln "git://www.ginac.de/cln.git" "d1893be" GENERATE_TARGET)
# fetch_git_3rd_project(ginac "git://www.ginac.de/ginac.git" "3956eb44" GENERATE_TARGET)
add_url_3rd_project(ARCSim "http://graphics.berkeley.edu/resources/ARCSim/arcsim-0.3.1.tar.gz" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(stan-math "git@github.com:stan-dev/math.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
# add_git_3rd_project(CPM.cmake "git@github.com:cpm-cmake/CPM.cmake.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(MeshFEM "git@github.com:MeshFEM/MeshFEM.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(osqp "git@github.com:osqp/osqp.git" "1a2f2d32" GENERATE_TARGET)
add_git_3rd_project(OsqpEigen "git@github.com:robotology/osqp-eigen.git" "v0.7.0" GENERATE_TARGET)
add_git_3rd_project(osqp-cpp "git@github.com:google/osqp-cpp.git" "origin/master" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(alglib "git@github.com:LamKamhang/alglib-cmake-wrapper.git" "origin/master" GENERATE_TARGET)
add_git_3rd_project(wechat-uos "https://aur.archlinux.org/wechat-uos.git" "ae476e0" DO_NOT_BUILD GENERATE_TARGET)
add_git_3rd_project(ifopt "git@github.com:ethz-adrl/ifopt.git" "2.1.3" GENERATE_TARGET)
