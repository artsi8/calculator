CMAKE_MINIMUM_REQUIRED(VERSION 3.0)
project(Calculator)

Add_Library(
    Calculator STATIC 
    calculator.cpp
)

add_executable(
    Calc 
    main.cpp 
)

target_link_libraries(
    Calc
    Calculator
)
