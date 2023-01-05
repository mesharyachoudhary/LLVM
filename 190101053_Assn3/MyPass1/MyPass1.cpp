#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/IRBuilder.h"
#include <string>
#include <vector>
#include <map>
#include <set>
#include <utility>
#include <fstream>
#include <cxxabi.h>
using std::string;
using std::vector;
using std::map;
using std::pair;
using std::set;
using namespace llvm;

namespace{
    struct MyPass1: public ModulePass{
        static char ID;
        Function* printl;
        Function* prints;
        FunctionType* fun1type;
        FunctionType* fun2type;
        Value* addr1;
        Value* addr2;
        MyPass1() : ModulePass(ID) {}
        bool runOnModule(Module &M) override {
            enum sys::fs::OpenFlags F_None;
            std::error_code ECode;
            for(Module::iterator fb = M.begin(),fe = M.end();fb != fe;fb++)
            {
                string s = (fb->getName()).str();
                if(s.find("printL")!=std::string::npos){
                    printl = cast<Function>(fb);
                    fun1type = printl->getFunctionType();
                    continue;
                }else if(s.find("printS")!=std::string::npos){
                    prints = cast<Function>(fb);
                    fun2type = prints->getFunctionType();
                    continue;
                }else{
                    for(Function::iterator bbb = fb->begin(),bbe = fb->end();bbb!=bbe;bbb++){
                        for(BasicBlock::iterator ib = bbb->begin(),ie = bbb->end();ib!=ie;ib++){
                            Instruction* ii = &*ib;
                            //errs() << *ii << "\n";
                            IRBuilder<> Builder(ii);
                            string temp = (ii->getOpcodeName());
                            auto parametertype = fun1type->getParamType(0);
                            if(temp=="store"){
                                addr1 = ii->getOperand(1);
                                auto arguments = Builder.CreatePointerCast(addr1,parametertype);
                                Builder.CreateCall(fun2type,prints,{arguments});

                            }else if(temp=="load"){
                                addr2 = ii->getOperand(0);
                                auto arguments = Builder.CreatePointerCast(addr2,parametertype);
                                Builder.CreateCall(fun1type,printl,{arguments});                            
                            }
                        }
                    }
                }
            }
            raw_fd_ostream fout("newtest.ll", ECode,F_None);
            M.print(fout,nullptr);
            return true;         
        }
    };
}

char MyPass1::ID = 0;
static RegisterPass<MyPass1> X("mypass1", "My New Pass",false,false);