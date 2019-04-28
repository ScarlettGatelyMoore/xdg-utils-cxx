if(XDG_UTILS_CODE_COVERAGE)
    set(COVERAGE_LCOV_EXCLUDES '${PROJECT_SOURCE_DIR}/tests/*' '${PROJECT_SOURCE_DIR}/*build*' '/usr/*')
    SETUP_TARGET_FOR_COVERAGE_GCOVR_XML(
        NAME ctest_coverage
        EXECUTABLE ctest -j ${PROCESSOR_COUNT}
        DEPENDENCIES "${PROJECT_TESTS_TARGETS}"
    )
endif()