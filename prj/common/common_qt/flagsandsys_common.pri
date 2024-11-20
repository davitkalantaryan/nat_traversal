#
# repo:			nat traversal
# name:			flagsandsys_common.pri
# path:			prj/common/common_qt/flagsandsys_common.pri
# created on:   2023 Jun 21
# created by:   Davit Kalantaryan (davit.kalantaryan@desy.de)
# usage:		Use this qt include file to calculate some platform specific stuff
#


message("!!! $${PWD}/flagsandsys_common.pri")

isEmpty(natTraversalFlagsAndSysCommonIncluded){
    natTraversalFlagsAndSysCommonIncluded = 1

    natTraversalRepoRoot = $${PWD}/../../..

    isEmpty(artifactRoot) {
        artifactRoot = $$(artifactRoot)
	        isEmpty(artifactRoot) {
		        artifactRoot = $${natTraversalRepoRoot}
		}
    }

    include("$${natTraversalRepoRoot}/contrib/cinternal/prj/common/common_qt/flagsandsys_common.pri")

    INCLUDEPATH += $${natTraversalRepoRoot}/include

    LIBS	+= -L$${natTraversalRepoRoot}/sys/$${CODENAME}/$$CONFIGURATION/lib
    LIBS	+= -L$${natTraversalRepoRoot}/sys/$${CODENAME}/$$CONFIGURATION/tlib

}
