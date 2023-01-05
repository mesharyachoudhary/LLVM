#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/Instructions.h"
#include <string>
#include <vector>
#include <map>
#include <set>
#include <utility>
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
        MyPass1() : ModulePass(ID) {}
        bool runOnModule(Module &M) override {
            enum sys::fs::OpenFlags F_None;
            std::error_code ECode;
            raw_fd_ostream fout("DFG.dot", ECode,F_None);
            int maxinstr = 0;
            vector<Value*>instructionlist; //stores instructions of the basic block
            BasicBlock* ansb; //biggest basic block
            set<string>vertices; //set of vertices(can be opcode,result,operand)
            map<string,int>occurence; //counts occurences of opcodes
            vector<pair<string,string>>edges; // set of edges
            map<string,int>mapping; //maps DFG vertex to DOT File vertex
            for(Module::iterator fb = M.begin(),fe = M.end();fb != fe;fb++){
                for(Function::iterator bbb = fb->begin(),bbe = fb->end();bbb!=bbe;bbb++){
                    int val = 0;
                    for(BasicBlock::iterator ib = bbb->begin(),ie = bbb->end();ib!=ie;ib++){
                        val++;
                    }
                    if(val>maxinstr){
                        maxinstr = val;
                        ansb = &*bbb;
                    }
                }
            }
            errs()<<"Maximum Block Size - "<<maxinstr<<"\n";
            errs()<<"SSA for biggest basic block\n";
            for (BasicBlock::iterator i = ansb->begin(), e = ansb->end(); i != e; ++i) {
                Instruction* ii = &*i;
                instructionlist.push_back(ii);
                errs() << *ii << "\n";
                string temp = (i->getOpcodeName());
                if(temp=="store"){
                    //generate opcode node
                    string opcode = (i->getOpcodeName());
                    occurence[opcode]++;
                    opcode+=std::to_string(occurence[opcode]);
                    vertices.insert(opcode);

                    //generate edges
                    string src = (i->getOperand(0))->getNameOrAsOperand();
                    string dest = (i->getOperand(1))->getNameOrAsOperand();
                    if(src[0]=='%'){
                        src[0] = 't';
                    }
                    if(dest[0]=='%'){
                        dest[0] = 't';
                    }
                    edges.push_back({src,opcode});
                    edges.push_back({opcode,dest});

                    for(int j=0;j<(int)(i->getNumOperands());j++){
                        //generate operand nodes
                        string src = (i->getOperand(j))->getNameOrAsOperand();
                        if(src[0]=='%'){
                            src[0] = 't';
                        }
                        vertices.insert(src);
                    }
                }else{
                    //generate opcode node
                    string opcode = (i->getOpcodeName());
                    occurence[opcode]++;
                    opcode+=std::to_string(occurence[opcode]);
                    vertices.insert(opcode);

                    //generate result node
                    string dest = (i->getNameOrAsOperand());
                    if(dest!="<badref>"){
                        if(dest[0]=='%'){
                            dest[0] = 't';
                        }
                        vertices.insert(dest);
                        //generate result edge
                        edges.push_back({opcode,dest});
                    }             
                    for(int j=0;j<(int)(i->getNumOperands());j++){
                        //generate operand node
                        string src = (i->getOperand(j))->getNameOrAsOperand();
                        if(src[0]=='%'){
                            src[0] = 't';
                        }
                        vertices.insert(src);
                        //generate operand edge
                        edges.push_back({src,opcode});
                    }
                }
            }
            int vertexcnt = 0;
            fout<<"digraph G {\n";
            //printing vertices
            for(auto vertex:vertices){
                vertexcnt++;
                mapping[vertex] = vertexcnt;
                fout << "\tVertex" << vertexcnt << "[shape=record, label=\"" << vertex<< "\"];\n";                    
            }
            //printing edges
            for(int i=0;i<(int)edges.size();i++){
				fout << "\tVertex" << mapping[edges[i].first] << " -> Vertex" << mapping[edges[i].second] << "\n";                
            }
			fout << "}\n";
			fout.close();               
            return false;         
        }
    };
}

char MyPass1::ID = 0;
static RegisterPass<MyPass1> X("mypass1", "My New Pass",false,false);