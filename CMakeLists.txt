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

add_git_3rd_project(amgcl "git@github.com:ddemidov/amgcl.git" "7bd9448")
add_git_3rd_project(args "git@github.com:Taywee/args.git" "ae22269")
add_git_3rd_project(assimp "git@github.com:assimp/assimp.git" "d51fce9e")
add_git_3rd_project(autodiff "git@github.com:autodiff/autodiff.git" "5ce372b")
add_git_3rd_project(bullet3 "git@github.com:bulletphysics/bullet3.git" "21d1b8fc7")
add_git_3rd_project(cgal "git@github.com:CGAL/cgal.git" "485e672c26")
add_git_3rd_project(cli11 "git@github.com:CLIUtils/CLI11.git" "4af78be")
add_git_3rd_project(eigen3   "ssh://git@ryon.ren:10022/mirrors/eigen3.git"   "3.3.9")
add_git_3rd_project(fmt "git@github.com:fmtlib/fmt.git" "95da484")
add_git_3rd_project(glfw3 "git@github.com:glfw/glfw.git" "33cd8b8")
add_git_3rd_project(oneTBB "git@github.com:oneapi-src/oneTBB.git" "9e15720b"
  CMAKE_ARGS "-DTBB_TEST=OFF")
add_git_3rd_project(oneDNN "git@github.com:oneapi-src/oneDNN.git" "8992640")
add_git_3rd_project(oneMKL "git@github.com:oneapi-src/oneMKL.git" "1539bca"
  CMAKE_ARGS "-DBUILD_FUNCTIONAL_TESTS=OFF -DCMAKE_CXX_COMPILER=dpcpp")
add_git_3rd_project(OpenMesh "ssh://git@ryon.ren:10022/mirrors/OpenMesh.git" "OpenMesh-8.1")
add_git_3rd_project(pybind11 "git@github.com:pybind/pybind11.git" "4f0727f")
add_git_3rd_project(rapidjson "git@github.com:Tencent/rapidjson.git" "49aa0fc")
add_git_3rd_project(spdlog "git@github.com:gabime/spdlog.git" "cbe94486")
add_git_3rd_project(spectra "git@github.com:yixuan/spectra.git" "8164080")
add_git_3rd_project(tinyobjloader "git@github.com:tinyobjloader/tinyobjloader.git" "e60d333")
add_git_3rd_project(voro "git@github.com:chr1shr/voro.git" "a45a362")
add_git_3rd_project(suitesparse_wrapper "git@github.com:LamKamhang/suitesparse-wrapper.git" "b5977fb")
add_git_3rd_project(nlopt "git@github.com:stevengj/nlopt.git" "28dd32d")

fetch_git_3rd_project(Trilinos "git@github.com:trilinos/Trilinos.git" "872dcd0e7da")
fetch_git_3rd_project(TriWild "https://github.com/wildmeshing/TriWild" "d85ec7a")
fetch_git_3rd_project(TetWild "https://github.com/Yixin-Hu/TetWild" "f6ca5d9")
fetch_git_3rd_project(fTetWild "git@github.com:wildmeshing/fTetWild.git" "c0be02c")
fetch_git_3rd_project(csv-parser "git@github.com:vincentlaucsb/csv-parser.git" "65e4fa5")
fetch_git_3rd_project(cmdline "git@github.com:tanakh/cmdline.git" "e4cd007")
fetch_git_3rd_project(ccls "git@github.com:MaskRay/ccls.git" "c6686be3")
fetch_git_3rd_project(libigl  "ssh://git@ryon.ren:10022/mirrors/libigl.git"   "v2.3.0")
fetch_git_3rd_project(glm "git@github.com:g-truc/glm.git" "761a842a")
fetch_git_3rd_project(benchmark "git@github.com:google/benchmark.git" "5e387e7")
fetch_git_3rd_project(ceres-solver "https://ceres-solver.googlesource.com/ceres-solver" "ec4f299")
fetch_git_3rd_project(FlameGraph "git@github.com:brendangregg/FlameGraph.git" "a258e78")
fetch_git_3rd_project(geometry-central "git@github.com:nmwsharp/geometry-central.git" "7d1ed9e")
fetch_git_3rd_project(glad "git@github.com:LamKamhang/glad.git" "6ee1551")
fetch_git_3rd_project(IPC "git@github.com:ipc-sim/IPC.git" "ad40d23")
fetch_git_3rd_project(Ipopt "git@github.com:coin-or/Ipopt.git" "e8e9a71")
fetch_git_3rd_project(nonmanifold-laplacian "git@github.com:nmwsharp/nonmanifold-laplacian.git" "0ed21e2")
fetch_git_3rd_project(onedrive "git@github.com:abraunegg/onedrive.git" "0774a8f")
fetch_git_3rd_project(penrose "git@github.com:penrose/penrose.git" "f56d55f5")
fetch_git_3rd_project(polyscope "git@github.com:nmwsharp/polyscope.git" "ddc4c06")
fetch_git_3rd_project(qt-mvvm "git@github.com:gpospelov/qt-mvvm.git" "59f8083e")
fetch_git_3rd_project(rectpack2D "git@github.com:TeamHypersomnia/rectpack2D.git" "9c7fe5d")
fetch_git_3rd_project(sage "git://trac.sagemath.org/sage.git" "53285707f0")
fetch_git_3rd_project(stb "git@github.com:nothings/stb.git" "c9064e3")
fetch_git_3rd_project(ThirdParty-ASL "git@github.com:coin-or-tools/ThirdParty-ASL.git" "e0d96c7")
fetch_git_3rd_project(ThirdParty-HSL "git@github.com:coin-or-tools/ThirdParty-HSL.git" "586b16a")
fetch_git_3rd_project(ThirdParty-Metis "git@github.com:coin-or-tools/ThirdParty-Metis.git" "48d8910")
fetch_git_3rd_project(ThirdParty-Mumps "git@github.com:coin-or-tools/ThirdParty-Mumps.git" "787c1ac")
fetch_git_3rd_project(variational-surface-cutting "git@github.com:nmwsharp/variational-surface-cutting.git" "4310b25")
fetch_git_3rd_project(imgui "git@github.com:ocornut/imgui.git" "00d570e"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/imgui_wrapper/imgui"
  )
fetch_git_3rd_project(CoMISo "https://www.graphics.rwth-aachen.de:9000/CoMISo/CoMISo.git" "49a044a"
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/3rd/CoMISo_wrapper/CoMISo"
  )
# fetch_git_3rd_project(cln "git://www.ginac.de/cln.git" "d1893be")
# fetch_git_3rd_project(ginac "git://www.ginac.de/ginac.git" "3956eb44")
