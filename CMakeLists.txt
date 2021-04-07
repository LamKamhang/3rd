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

require_package(amgcl "git@github.com:ddemidov/amgcl.git" "7bd9448")
require_package(args "git@github.com:Taywee/args.git" "ae22269")
require_package(assimp "git@github.com:assimp/assimp.git" "d51fce9e")
require_package(autodiff "git@github.com:autodiff/autodiff.git" "5ce372b")
require_package(Bullet "git@github.com:bulletphysics/bullet3.git" "21d1b8fc7")
require_package(CGAL "git@github.com:CGAL/cgal.git" "485e672c26")
require_package(CLI11 "git@github.com:CLIUtils/CLI11.git" "4af78be")
require_package(Eigen3   "ssh://git@ryon.ren:10022/mirrors/eigen3.git"   "3.3.9")
require_package(fmt "git@github.com:fmtlib/fmt.git" "95da484")
require_package(glfw3 "git@github.com:glfw/glfw.git" "33cd8b8")
require_package(TBB "git@github.com:oneapi-src/oneTBB.git" "9e15720b")
require_package(OpenMesh "ssh://git@ryon.ren:10022/mirrors/OpenMesh.git" "OpenMesh-8.1")
require_package(pybind11 "git@github.com:pybind/pybind11.git" "4f0727f")
require_package(RapidJSON "git@github.com:Tencent/rapidjson.git" "49aa0fc")
require_package(spdlog "git@github.com:gabime/spdlog.git" "cbe94486")
require_package(Spectra "git@github.com:yixuan/spectra.git" "5f8ea3a")
require_package(tinyobjloader "git@github.com:tinyobjloader/tinyobjloader.git" "e60d333")
require_package(VORO "git@github.com:chr1shr/voro.git" "a45a362")
require_package(SuiteSparse "git@github.com:LamKamhang/suitesparse-wrapper.git" "b5977fb")
require_package(NLopt "git@github.com:stevengj/nlopt.git" "28dd32d")

fetch_package(Trilinos "git@github.com:trilinos/Trilinos.git" "872dcd0e7da")
fetch_package(TriWild "https://github.com/wildmeshing/TriWild" "d85ec7a")
fetch_package(TetWild "https://github.com/Yixin-Hu/TetWild" "f6ca5d9")
fetch_package(fTetWild "git@github.com:wildmeshing/fTetWild.git" "c0be02c")
fetch_package(csv-parser "git@github.com:vincentlaucsb/csv-parser.git" "65e4fa5")
fetch_package(cmdline "git@github.com:tanakh/cmdline.git" "e4cd007")
fetch_package(ccls "git@github.com:MaskRay/ccls.git" "c6686be3")
fetch_package(igl  "ssh://git@ryon.ren:10022/mirrors/libigl.git"   "v2.3.0"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/libigl"
  )
fetch_package(glm "git@github.com:g-truc/glm.git" "761a842a")
fetch_package(benchmark "git@github.com:google/benchmark.git" "5e387e7")
fetch_package(ceres-solver "https://ceres-solver.googlesource.com/ceres-solver" "ec4f299")
fetch_package(FlameGraph "git@github.com:brendangregg/FlameGraph.git" "a258e78")
fetch_package(geometry-central "git@github.com:nmwsharp/geometry-central.git" "7d1ed9e")
fetch_package(glad "git@github.com:LamKamhang/glad.git" "6ee1551")
fetch_package(IPC "git@github.com:ipc-sim/IPC.git" "ad40d23")
fetch_package(Ipopt "git@github.com:coin-or/Ipopt.git" "e8e9a71")
fetch_package(nonmanifold-laplacian "git@github.com:nmwsharp/nonmanifold-laplacian.git" "0ed21e2")
fetch_package(onedrive "git@github.com:abraunegg/onedrive.git" "0774a8f")
fetch_package(penrose "git@github.com:penrose/penrose.git" "f56d55f5")
fetch_package(polyscope "git@github.com:nmwsharp/polyscope.git" "ddc4c06")
fetch_package(qt-mvvm "git@github.com:gpospelov/qt-mvvm.git" "59f8083e")
fetch_package(rectpack2D "git@github.com:TeamHypersomnia/rectpack2D.git" "9c7fe5d")
fetch_package(sage "git://trac.sagemath.org/sage.git" "53285707f0")
fetch_package(stb "git@github.com:nothings/stb.git" "c9064e3")
fetch_package(ThirdParty-ASL "git@github.com:coin-or-tools/ThirdParty-ASL.git" "e0d96c7")
fetch_package(ThirdParty-HSL "git@github.com:coin-or-tools/ThirdParty-HSL.git" "586b16a")
fetch_package(ThirdParty-Metis "git@github.com:coin-or-tools/ThirdParty-Metis.git" "48d8910")
fetch_package(ThirdParty-Mumps "git@github.com:coin-or-tools/ThirdParty-Mumps.git" "787c1ac")
fetch_package(variational-surface-cutting "git@github.com:nmwsharp/variational-surface-cutting.git" "4310b25")
fetch_package(imgui "git@github.com:ocornut/imgui.git" "00d570e"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/imgui_wrapper/imgui"
  )
fetch_package(CoMISo "https://www.graphics.rwth-aachen.de:9000/CoMISo/CoMISo.git" "49a044a"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/CoMISo_wrapper/CoMISo"
  )
# fetch_package(cln "git://www.ginac.de/cln.git" "d1893be")
# fetch_package(ginac "git://www.ginac.de/ginac.git" "3956eb44")
