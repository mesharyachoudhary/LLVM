Steps to run the pass:-
(1) Place the MyPass1 folder inside llvm/lib/transforms directory
(2) Add the following line to the CMakeLists.txt file in that directory
    add_subdirectory(MyPass1)
(3) Place the test1.c file in the build directory and execute the following to generate test1.ll which is the IR file
    clang -S -emit-llvm test1.c
(4) Go to the build directory and execute 
    make -j8
(5) Next in the build directory only execute (Adjust path according to you for me it is /home/ubuntu/LLVM/llvm-project-llvmorg-12.0.0)
    /home/ubuntu/LLVM/llvm-project-llvmorg-12.0.0/build/bin/opt -enable-new-pm=0 -disable-output  -load LLVMMyPass1.so  test1.ll --mypass1
(6) DFG.dot will be generated after this which can be converted to the image by the following command
    dot -Tpng DFG.dot > DFG.png

