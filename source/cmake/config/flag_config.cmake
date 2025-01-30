# ===================================================
# Set compile flags
# ===================================================
set(COMPILE_OPTIONS_PROJECT
  -Wall
  -Wextra
  -Wpedantic 
  -Wc++17-compat                                      #Warn about C++ constructs whose meaning differs between ISO C++ 2014 and ISO C++ 2017.
  -Wconversion                                        #Warn for implicit type conversions that may change a value.
  -Wconversion-null                                   #Warn for converting NULL from/to a non-pointer type.
  -Wbuiltin-macro-redefined                           #Warn when a built-in preprocessor macro is undefined or redefined.
  -Wcast-align                                        #Warn about pointer casts which increase alignment.
  -Wdelete-non-virtual-dtor                           #Warn about deleting polymorphic objects with non-virtual destructors.
  -Wdeprecated                                        #Warn if a deprecated compiler feature, class, method, or field is used.
  -Wdiv-by-zero                                       #Warn about compile-time integer division by zero.
  -Wdouble-promotion                                  #Warn about implicit conversions from "float" to "double".
  -Wfloat-conversion                                  #Warn for implicit type conversions that cause loss of floating point precision.
  -Wfloat-equal                                       #Warn if testing floating point numbers for equality.
  -Winit-list-lifetime                                #Warn about uses of std::initializer_list that can result in dangling pointers.
  -Wnull-dereference                                  #Warn if dereferencing a NULL pointer may lead to erroneous or undefined behavior.
  -Woverflow                                          #Warn about overflow in arithmetic expressions.
  -Wparentheses                                       #Warn about possibly missing parentheses.
  -Wpessimizing-move                                  #Warn about calling std::move on a local object in a return statement preventing copy elision.
  -Wreturn-local-addr                                 #Warn about returning a pointer/reference to a local or temporary variable.
  -Wshadow                                            #Warn when one variable shadows another.
  -Wsuggest-final-methods                             #Warn about C++ virtual methods where adding final keyword would improve code quality.
  -Wsuggest-final-types                               #Warn about C++ polymorphic types where adding final keyword would improve code quality.
  -Wsuggest-override                                  #Suggest that the override keyword be used when the declaration of a virtual function overrides another.
  -Wswitch-default                                    #Warn about enumerated switches missing a "default:" statement.
  -Wunknown-pragmas                                   #Warn about unrecognized pragmas.
  -ffinite-math-only                                  #Assume no NaNs or infinities are generated.

  -Wenum-conversion                                   #Warn about implicit conversion of enum types.
  -Wexceptions                                        #Warn when an exception handler is shadowed by another handler.
  -Wswitch-outside-range                              #Warn about switch values that are outside of the switch is type range.
  -ffinite-loops                                      #Assume that loops with an exit will terminate and not loop indefinitely.
  
  $<$<CONFIG:Debug>:-Og>                              #Optimize for debugging experience rather than speed or size
  $<$<CONFIG:Debug>:-g>                               #Generate debug information in default format.
  $<$<CONFIG:Debug>:-ggdb>                            #Generate debug information in default extended format.

  $<$<CONFIG:Release>:-O2>                            #Optimize for release experience (speed > size)
  $<$<CONFIG:Release>:-fdelete-null-pointer-checks>   #Delete useless null pointer checks.
)