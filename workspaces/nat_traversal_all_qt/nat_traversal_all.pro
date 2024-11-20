

TEMPLATE = subdirs
#CONFIG += ordered

include ( "$${PWD}/../../prj/common/common_qt/flagsandsys_common_private.pri" )


SUBDIRS		+=	"$${natTraversalRepoRoot}/prj/tests/client_to_connect_to_server_behind_nat_test_qt/client_to_connect_to_server_behind_nat_test.pro"
SUBDIRS		+=	"$${natTraversalRepoRoot}/prj/tests/public_server_to_resolve_nat_test_qt/public_server_to_resolve_nat_test.pro"
SUBDIRS		+=	"$${natTraversalRepoRoot}/prj/tests/server_behind_nat_test_qt/server_behind_nat_test.pro"

cinternalFromHere{
        SUBDIRS	+= "$${cinternalRepoRoot}/workspaces/cinternal_all_qt/cinternal_all.pro"
}


OTHER_FILES += $$files($${natTraversalRepoRoot}/scripts/*.sh,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/scripts/*.bat,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/scripts/.cicd/*.sh,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/scripts/.cicd/*.bat,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/scripts/.raw/*.sh,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/scripts/.raw/*.bat,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/docs/*.md,true)
OTHER_FILES += $$files($${natTraversalRepoRoot}/docs/*.txt,true)
#OTHER_FILES += $$files($${natTraversalRepoRoot}/.github/*.yml,true)


OTHER_FILES	+=	\
        "$${natTraversalRepoRoot}/.gitattributes"						\
	"$${natTraversalRepoRoot}/.gitignore"						\
	"$${natTraversalRepoRoot}/.gitmodules"						\
	"$${natTraversalRepoRoot}/LICENSE"							\
	"$${natTraversalRepoRoot}/README.md"
