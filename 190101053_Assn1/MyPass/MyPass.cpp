#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include <cxxabi.h>
using namespace llvm;

namespace{
    struct MyPass: public ModulePass{
        static char ID;
        MyPass() : ModulePass(ID) {}
        bool runOnModule(Module &M) override {
            //counting the functions
            int functioncnt = 0;
            //iterating over the functions
            for(Module::iterator fb = M.begin(),fe = M.end();fb != fe;fb++){
                functioncnt++;
            }
            errs() << "Total Number of Function Definitions - " << functioncnt << "\n";
            errs() << "\n";
            for(Module::iterator fb = M.begin(),fe = M.end();fb != fe;fb++){
                errs() << "Function Name - " << fb->getName() << "\n";
                int bbcnt = 0;
                int argcnt = 0;
                //iterating over the arguments of the function
                for(Function::arg_iterator argb = fb->arg_begin(),arge = fb->arg_end();argb!=arge;argb++){
                    argcnt++;
                }
                 errs() << "Total Number of Arguments/Arity - " << argcnt << "\n";
                //iterating over the basic blocks of the function
                for(Function::iterator bbb = fb->begin(),bbe = fb->end();bbb!=bbe;bbb++){
                    bbcnt++;
                }
                 errs() << "Total Number of Basic Blocks -    " << bbcnt << "\n";
                 errs() << "\n";
                 errs() << "\n";
            }   
            return false;         
        }
    };
}

char MyPass::ID = 0;
static RegisterPass<MyPass> X("mypass", "My New Pass",false,false);

