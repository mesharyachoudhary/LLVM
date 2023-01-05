int add(int a,int b,int c,int d){
    if(a!=0){
    return a+b+c+d;
    }else{
    return b+c+d;
    };
}
int subtract(int a,int b){
    return a-b;
}
int multiply(int a,int b){
    return a*b;
}
int divide(int a,int b){
    return a/b;
}

int main(){
    add(2,3,4,5);
}