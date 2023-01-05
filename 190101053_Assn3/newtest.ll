; ModuleID = 'test2.ll'
source_filename = "test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.complex = type { float, float }

@firsttimeOpen = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mytrace.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@mfp = common dso_local global %struct._IO_FILE* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%p\00", align 1
@TF = common dso_local global [256 x %struct.complex] zeroinitializer, align 16
@new_index = common dso_local global [256 x i32] zeroinitializer, align 16
@input = common dso_local global [256 x %struct.complex] zeroinitializer, align 16
@GA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLL(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @firsttimeOpen, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** @mfp, align 8
  store i32 1, i32* @firsttimeOpen, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @mfp, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSS(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @firsttimeOpen, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** @mfp, align 8
  store i32 1, i32* @firsttimeOpen, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @mfp, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  ret void
}

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @fabs(double %0) #2 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i32*
  call void @printSS(i32* %3)
  store double %0, double* %2, align 8
  %4 = bitcast double* %2 to i32*
  call void @printLL(i32* %4)
  %5 = load double, double* %2, align 8
  %6 = fcmp olt double %5, 0.000000e+00
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = bitcast double* %2 to i32*
  call void @printLL(i32* %8)
  %9 = load double, double* %2, align 8
  %10 = fneg double %9
  br label %14

11:                                               ; preds = %1
  %12 = bitcast double* %2 to i32*
  call void @printLL(i32* %12)
  %13 = load double, double* %2, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi double [ %10, %7 ], [ %13, %11 ]
  ret double %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = bitcast double* %2 to i32*
  call void @printSS(i32* %6)
  store double %0, double* %2, align 8
  call void @printSS(i32* %5)
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = bitcast double* %2 to i32*
  call void @printLL(i32* %8)
  %9 = load double, double* %2, align 8
  %10 = fcmp ogt double %9, 0x401921FB54442D18
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = bitcast double* %2 to i32*
  call void @printLL(i32* %12)
  %13 = load double, double* %2, align 8
  %14 = fsub double %13, 0x401921FB54442D18
  %15 = bitcast double* %2 to i32*
  call void @printSS(i32* %15)
  store double %14, double* %2, align 8
  br label %7

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %21, %16
  %18 = bitcast double* %2 to i32*
  call void @printLL(i32* %18)
  %19 = load double, double* %2, align 8
  %20 = fcmp olt double %19, 0xC01921FB54442D18
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = bitcast double* %2 to i32*
  call void @printLL(i32* %22)
  %23 = load double, double* %2, align 8
  %24 = fadd double %23, 0x401921FB54442D18
  %25 = bitcast double* %2 to i32*
  call void @printSS(i32* %25)
  store double %24, double* %2, align 8
  br label %17

26:                                               ; preds = %17
  %27 = bitcast double* %2 to i32*
  call void @printLL(i32* %27)
  %28 = load double, double* %2, align 8
  %29 = bitcast double* %4 to i32*
  call void @printSS(i32* %29)
  store double %28, double* %4, align 8
  %30 = bitcast double* %3 to i32*
  call void @printSS(i32* %30)
  store double %28, double* %3, align 8
  %31 = bitcast double* %4 to i32*
  call void @printLL(i32* %31)
  %32 = load double, double* %4, align 8
  %33 = bitcast double* %2 to i32*
  call void @printLL(i32* %33)
  %34 = load double, double* %2, align 8
  %35 = bitcast double* %2 to i32*
  call void @printLL(i32* %35)
  %36 = load double, double* %2, align 8
  %37 = fmul double %34, %36
  %38 = fneg double %37
  %39 = fmul double %32, %38
  call void @printLL(i32* %5)
  %40 = load i32, i32* %5, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double 2.000000e+00, %41
  call void @printLL(i32* %5)
  %43 = load i32, i32* %5, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double 2.000000e+00, %44
  %46 = fadd double %45, 1.000000e+00
  %47 = fmul double %42, %46
  %48 = fdiv double %39, %47
  %49 = bitcast double* %4 to i32*
  call void @printSS(i32* %49)
  store double %48, double* %4, align 8
  %50 = bitcast double* %3 to i32*
  call void @printLL(i32* %50)
  %51 = load double, double* %3, align 8
  %52 = bitcast double* %4 to i32*
  call void @printLL(i32* %52)
  %53 = load double, double* %4, align 8
  %54 = fadd double %51, %53
  %55 = bitcast double* %3 to i32*
  call void @printSS(i32* %55)
  store double %54, double* %3, align 8
  call void @printLL(i32* %5)
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  call void @printSS(i32* %5)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %63, %26
  %59 = bitcast double* %4 to i32*
  call void @printLL(i32* %59)
  %60 = load double, double* %4, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  %62 = fcmp oge double %61, 1.000000e-05
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = bitcast double* %4 to i32*
  call void @printLL(i32* %64)
  %65 = load double, double* %4, align 8
  %66 = bitcast double* %2 to i32*
  call void @printLL(i32* %66)
  %67 = load double, double* %2, align 8
  %68 = bitcast double* %2 to i32*
  call void @printLL(i32* %68)
  %69 = load double, double* %2, align 8
  %70 = fmul double %67, %69
  %71 = fneg double %70
  %72 = fmul double %65, %71
  call void @printLL(i32* %5)
  %73 = load i32, i32* %5, align 4
  %74 = sitofp i32 %73 to double
  %75 = fmul double 2.000000e+00, %74
  call void @printLL(i32* %5)
  %76 = load i32, i32* %5, align 4
  %77 = sitofp i32 %76 to double
  %78 = fmul double 2.000000e+00, %77
  %79 = fadd double %78, 1.000000e+00
  %80 = fmul double %75, %79
  %81 = fdiv double %72, %80
  %82 = bitcast double* %4 to i32*
  call void @printSS(i32* %82)
  store double %81, double* %4, align 8
  %83 = bitcast double* %3 to i32*
  call void @printLL(i32* %83)
  %84 = load double, double* %3, align 8
  %85 = bitcast double* %4 to i32*
  call void @printLL(i32* %85)
  %86 = load double, double* %4, align 8
  %87 = fadd double %84, %86
  %88 = bitcast double* %3 to i32*
  call void @printSS(i32* %88)
  store double %87, double* %3, align 8
  call void @printLL(i32* %5)
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  call void @printSS(i32* %5)
  store i32 %90, i32* %5, align 4
  br label %58

91:                                               ; preds = %58
  %92 = bitcast double* %3 to i32*
  call void @printLL(i32* %92)
  %93 = load double, double* %3, align 8
  ret double %93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cos(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = bitcast double* %2 to i32*
  call void @printSS(i32* %6)
  store double %0, double* %2, align 8
  call void @printSS(i32* %5)
  store i32 1, i32* %5, align 4
  %7 = bitcast double* %2 to i32*
  call void @printLL(i32* %7)
  %8 = load double, double* %2, align 8
  %9 = fadd double %8, 0x3FF921FB54442D18
  %10 = bitcast double* %2 to i32*
  call void @printSS(i32* %10)
  store double %9, double* %2, align 8
  br label %11

11:                                               ; preds = %15, %1
  %12 = bitcast double* %2 to i32*
  call void @printLL(i32* %12)
  %13 = load double, double* %2, align 8
  %14 = fcmp ogt double %13, 0x401921FB54442D18
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = bitcast double* %2 to i32*
  call void @printLL(i32* %16)
  %17 = load double, double* %2, align 8
  %18 = fsub double %17, 0x401921FB54442D18
  %19 = bitcast double* %2 to i32*
  call void @printSS(i32* %19)
  store double %18, double* %2, align 8
  br label %11

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %25, %20
  %22 = bitcast double* %2 to i32*
  call void @printLL(i32* %22)
  %23 = load double, double* %2, align 8
  %24 = fcmp olt double %23, 0xC01921FB54442D18
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = bitcast double* %2 to i32*
  call void @printLL(i32* %26)
  %27 = load double, double* %2, align 8
  %28 = fadd double %27, 0x401921FB54442D18
  %29 = bitcast double* %2 to i32*
  call void @printSS(i32* %29)
  store double %28, double* %2, align 8
  br label %21

30:                                               ; preds = %21
  %31 = bitcast double* %2 to i32*
  call void @printLL(i32* %31)
  %32 = load double, double* %2, align 8
  %33 = bitcast double* %4 to i32*
  call void @printSS(i32* %33)
  store double %32, double* %4, align 8
  %34 = bitcast double* %3 to i32*
  call void @printSS(i32* %34)
  store double %32, double* %3, align 8
  %35 = bitcast double* %4 to i32*
  call void @printLL(i32* %35)
  %36 = load double, double* %4, align 8
  %37 = bitcast double* %2 to i32*
  call void @printLL(i32* %37)
  %38 = load double, double* %2, align 8
  %39 = bitcast double* %2 to i32*
  call void @printLL(i32* %39)
  %40 = load double, double* %2, align 8
  %41 = fmul double %38, %40
  %42 = fneg double %41
  %43 = fmul double %36, %42
  call void @printLL(i32* %5)
  %44 = load i32, i32* %5, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double 2.000000e+00, %45
  call void @printLL(i32* %5)
  %47 = load i32, i32* %5, align 4
  %48 = sitofp i32 %47 to double
  %49 = fmul double 2.000000e+00, %48
  %50 = fadd double %49, 1.000000e+00
  %51 = fmul double %46, %50
  %52 = fdiv double %43, %51
  %53 = bitcast double* %4 to i32*
  call void @printSS(i32* %53)
  store double %52, double* %4, align 8
  %54 = bitcast double* %3 to i32*
  call void @printLL(i32* %54)
  %55 = load double, double* %3, align 8
  %56 = bitcast double* %4 to i32*
  call void @printLL(i32* %56)
  %57 = load double, double* %4, align 8
  %58 = fadd double %55, %57
  %59 = bitcast double* %3 to i32*
  call void @printSS(i32* %59)
  store double %58, double* %3, align 8
  call void @printLL(i32* %5)
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  call void @printSS(i32* %5)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %67, %30
  %63 = bitcast double* %4 to i32*
  call void @printLL(i32* %63)
  %64 = load double, double* %4, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  %66 = fcmp oge double %65, 1.000000e-05
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = bitcast double* %4 to i32*
  call void @printLL(i32* %68)
  %69 = load double, double* %4, align 8
  %70 = bitcast double* %2 to i32*
  call void @printLL(i32* %70)
  %71 = load double, double* %2, align 8
  %72 = bitcast double* %2 to i32*
  call void @printLL(i32* %72)
  %73 = load double, double* %2, align 8
  %74 = fmul double %71, %73
  %75 = fneg double %74
  %76 = fmul double %69, %75
  call void @printLL(i32* %5)
  %77 = load i32, i32* %5, align 4
  %78 = sitofp i32 %77 to double
  %79 = fmul double 2.000000e+00, %78
  call void @printLL(i32* %5)
  %80 = load i32, i32* %5, align 4
  %81 = sitofp i32 %80 to double
  %82 = fmul double 2.000000e+00, %81
  %83 = fadd double %82, 1.000000e+00
  %84 = fmul double %79, %83
  %85 = fdiv double %76, %84
  %86 = bitcast double* %4 to i32*
  call void @printSS(i32* %86)
  store double %85, double* %4, align 8
  %87 = bitcast double* %3 to i32*
  call void @printLL(i32* %87)
  %88 = load double, double* %3, align 8
  %89 = bitcast double* %4 to i32*
  call void @printLL(i32* %89)
  %90 = load double, double* %4, align 8
  %91 = fadd double %88, %90
  %92 = bitcast double* %3 to i32*
  call void @printSS(i32* %92)
  store double %91, double* %3, align 8
  call void @printLL(i32* %5)
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  call void @printSS(i32* %5)
  store i32 %94, i32* %5, align 4
  br label %62

95:                                               ; preds = %62
  %96 = bitcast double* %3 to i32*
  call void @printLL(i32* %96)
  %97 = load double, double* %3, align 8
  ret double %97
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reverse(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @printSS(i32* %3)
  store i32 %0, i32* %3, align 4
  call void @printSS(i32* %4)
  store i32 %1, i32* %4, align 4
  call void @printSS(i32* %5)
  store i32 0, i32* %5, align 4
  call void @printLL(i32* %3)
  %8 = load i32, i32* %3, align 4
  call void @printSS(i32* %7)
  store i32 %8, i32* %7, align 4
  call void @printSS(i32* %6)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %2
  call void @printLL(i32* %6)
  %10 = load i32, i32* %6, align 4
  call void @printLL(i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  call void @printLL(i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 2
  call void @printLL(i32* %7)
  %16 = load i32, i32* %7, align 4
  %17 = srem i32 %16, 2
  %18 = add nsw i32 %15, %17
  call void @printSS(i32* %5)
  store i32 %18, i32* %5, align 4
  call void @printLL(i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = sdiv i32 %19, 2
  call void @printSS(i32* %7)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %13
  call void @printLL(i32* %6)
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  call void @printSS(i32* %6)
  store i32 %23, i32* %6, align 4
  br label %9

24:                                               ; preds = %9
  call void @printLL(i32* %5)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @par_k(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.complex, align 4
  %9 = alloca %struct.complex, align 4
  %10 = alloca %struct.complex, align 4
  %11 = alloca %struct.complex, align 4
  %12 = alloca %struct.complex, align 4
  %13 = alloca %struct.complex, align 4
  %14 = alloca %struct.complex, align 4
  %15 = alloca %struct.complex, align 4
  %16 = alloca %struct.complex, align 4
  call void @printSS(i32* %3)
  store i32 %0, i32* %3, align 4
  call void @printSS(i32* %4)
  store i32 %1, i32* %4, align 4
  %17 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %18 = bitcast float* %17 to i32*
  call void @printSS(i32* %18)
  store float 5.000000e-01, float* %17, align 4
  %19 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 1
  %20 = bitcast float* %19 to i32*
  call void @printSS(i32* %20)
  store float 0.000000e+00, float* %19, align 4
  call void @printLL(i32* %3)
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, 2
  call void @printLL(i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %22, %23
  call void @printSS(i32* %5)
  store i32 %24, i32* %5, align 4
  call void @printLL(i32* %3)
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 1
  call void @printLL(i32* %4)
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %27, %28
  call void @printSS(i32* %6)
  store i32 %29, i32* %6, align 4
  call void @printSS(i32* %7)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %192, %2
  call void @printLL(i32* %7)
  %31 = load i32, i32* %7, align 4
  call void @printLL(i32* %4)
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %195

34:                                               ; preds = %30
  call void @printLL(i32* %7)
  %35 = load i32, i32* %7, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double 0x400921FB54442D18, %36
  call void @printLL(i32* %4)
  %38 = load i32, i32* %4, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %37, %39
  %41 = call double @cos(double %40) #5
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 0
  %44 = bitcast float* %43 to i32*
  call void @printSS(i32* %44)
  store float %42, float* %43, align 4
  call void @printLL(i32* %7)
  %45 = load i32, i32* %7, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double 0x400921FB54442D18, %46
  call void @printLL(i32* %4)
  %48 = load i32, i32* %4, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = call double @sin(double %50) #5
  %52 = fneg double %51
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 1
  %55 = bitcast float* %54 to i32*
  call void @printSS(i32* %55)
  store float %53, float* %54, align 4
  call void @printLL(i32* %6)
  %56 = load i32, i32* %6, align 4
  call void @printLL(i32* %7)
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %59
  %61 = bitcast %struct.complex* %12 to i8*
  %62 = bitcast %struct.complex* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 0
  %64 = bitcast float* %63 to i32*
  call void @printLL(i32* %64)
  %65 = load float, float* %63, align 4
  %66 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 0
  %67 = bitcast float* %66 to i32*
  call void @printLL(i32* %67)
  %68 = load float, float* %66, align 4
  %69 = fmul float %65, %68
  %70 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 1
  %71 = bitcast float* %70 to i32*
  call void @printLL(i32* %71)
  %72 = load float, float* %70, align 4
  %73 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 1
  %74 = bitcast float* %73 to i32*
  call void @printLL(i32* %74)
  %75 = load float, float* %73, align 4
  %76 = fmul float %72, %75
  %77 = fsub float %69, %76
  %78 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 0
  %79 = bitcast float* %78 to i32*
  call void @printSS(i32* %79)
  store float %77, float* %78, align 4
  %80 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 0
  %81 = bitcast float* %80 to i32*
  call void @printLL(i32* %81)
  %82 = load float, float* %80, align 4
  %83 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 1
  %84 = bitcast float* %83 to i32*
  call void @printLL(i32* %84)
  %85 = load float, float* %83, align 4
  %86 = fmul float %82, %85
  %87 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 0
  %88 = bitcast float* %87 to i32*
  call void @printLL(i32* %88)
  %89 = load float, float* %87, align 4
  %90 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 1
  %91 = bitcast float* %90 to i32*
  call void @printLL(i32* %91)
  %92 = load float, float* %90, align 4
  %93 = fmul float %89, %92
  %94 = fadd float %86, %93
  %95 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 1
  %96 = bitcast float* %95 to i32*
  call void @printSS(i32* %96)
  store float %94, float* %95, align 4
  call void @printLL(i32* %5)
  %97 = load i32, i32* %5, align 4
  call void @printLL(i32* %7)
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %100
  %102 = bitcast %struct.complex* %14 to i8*
  %103 = bitcast %struct.complex* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 8 %103, i64 8, i1 false)
  %104 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 0
  %105 = bitcast float* %104 to i32*
  call void @printLL(i32* %105)
  %106 = load float, float* %104, align 4
  %107 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 0
  %108 = bitcast float* %107 to i32*
  call void @printLL(i32* %108)
  %109 = load float, float* %107, align 4
  %110 = fadd float %106, %109
  %111 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 0
  %112 = bitcast float* %111 to i32*
  call void @printSS(i32* %112)
  store float %110, float* %111, align 4
  %113 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 1
  %114 = bitcast float* %113 to i32*
  call void @printLL(i32* %114)
  %115 = load float, float* %113, align 4
  %116 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 1
  %117 = bitcast float* %116 to i32*
  call void @printLL(i32* %117)
  %118 = load float, float* %116, align 4
  %119 = fadd float %115, %118
  %120 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 1
  %121 = bitcast float* %120 to i32*
  call void @printSS(i32* %121)
  store float %119, float* %120, align 4
  %122 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 0
  %123 = bitcast float* %122 to i32*
  call void @printLL(i32* %123)
  %124 = load float, float* %122, align 4
  %125 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 0
  %126 = bitcast float* %125 to i32*
  call void @printLL(i32* %126)
  %127 = load float, float* %125, align 4
  %128 = fsub float %124, %127
  %129 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %130 = bitcast float* %129 to i32*
  call void @printSS(i32* %130)
  store float %128, float* %129, align 4
  %131 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 1
  %132 = bitcast float* %131 to i32*
  call void @printLL(i32* %132)
  %133 = load float, float* %131, align 4
  %134 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 1
  %135 = bitcast float* %134 to i32*
  call void @printLL(i32* %135)
  %136 = load float, float* %134, align 4
  %137 = fsub float %133, %136
  %138 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %139 = bitcast float* %138 to i32*
  call void @printSS(i32* %139)
  store float %137, float* %138, align 4
  %140 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %141 = bitcast float* %140 to i32*
  call void @printLL(i32* %141)
  %142 = load float, float* %140, align 4
  %143 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 0
  %144 = bitcast float* %143 to i32*
  call void @printLL(i32* %144)
  %145 = load float, float* %143, align 4
  %146 = fmul float %142, %145
  %147 = getelementptr inbounds %struct.complex, %struct.complex* %8, i32 0, i32 0
  %148 = bitcast float* %147 to i32*
  call void @printSS(i32* %148)
  store float %146, float* %147, align 4
  %149 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %150 = bitcast float* %149 to i32*
  call void @printLL(i32* %150)
  %151 = load float, float* %149, align 4
  %152 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 1
  %153 = bitcast float* %152 to i32*
  call void @printLL(i32* %153)
  %154 = load float, float* %152, align 4
  %155 = fmul float %151, %154
  %156 = getelementptr inbounds %struct.complex, %struct.complex* %8, i32 0, i32 1
  %157 = bitcast float* %156 to i32*
  call void @printSS(i32* %157)
  store float %155, float* %156, align 4
  %158 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %159 = bitcast float* %158 to i32*
  call void @printLL(i32* %159)
  %160 = load float, float* %158, align 4
  %161 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %162 = bitcast float* %161 to i32*
  call void @printLL(i32* %162)
  %163 = load float, float* %161, align 4
  %164 = fmul float %160, %163
  %165 = getelementptr inbounds %struct.complex, %struct.complex* %9, i32 0, i32 0
  %166 = bitcast float* %165 to i32*
  call void @printSS(i32* %166)
  store float %164, float* %165, align 4
  %167 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %168 = bitcast float* %167 to i32*
  call void @printLL(i32* %168)
  %169 = load float, float* %167, align 4
  %170 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %171 = bitcast float* %170 to i32*
  call void @printLL(i32* %171)
  %172 = load float, float* %170, align 4
  %173 = fmul float %169, %172
  %174 = getelementptr inbounds %struct.complex, %struct.complex* %9, i32 0, i32 1
  %175 = bitcast float* %174 to i32*
  call void @printSS(i32* %175)
  store float %173, float* %174, align 4
  call void @printLL(i32* %5)
  %176 = load i32, i32* %5, align 4
  call void @printLL(i32* %7)
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %179
  %181 = bitcast %struct.complex* %180 to i8*
  %182 = bitcast %struct.complex* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 4 %182, i64 8, i1 false)
  call void @printLL(i32* %5)
  %183 = load i32, i32* %5, align 4
  call void @printLL(i32* %7)
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %183, %184
  call void @printLL(i32* %4)
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %188
  %190 = bitcast %struct.complex* %189 to i8*
  %191 = bitcast %struct.complex* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 4 %191, i64 8, i1 false)
  br label %192

192:                                              ; preds = %34
  call void @printLL(i32* %7)
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  call void @printSS(i32* %7)
  store i32 %194, i32* %7, align 4
  br label %30

195:                                              ; preds = %30
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FFT(%struct.complex* %0, i32 %1) #0 {
  %3 = alloca %struct.complex*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.complex, align 4
  %15 = alloca %struct.complex, align 4
  %16 = alloca %struct.complex, align 4
  %17 = alloca %struct.complex, align 4
  %18 = alloca %struct.complex, align 4
  %19 = alloca %struct.complex, align 4
  %20 = alloca %struct.complex, align 4
  %21 = alloca %struct.complex, align 4
  %22 = alloca %struct.complex, align 4
  %23 = bitcast %struct.complex** %3 to i32*
  call void @printSS(i32* %23)
  store %struct.complex* %0, %struct.complex** %3, align 8
  call void @printSS(i32* %4)
  store i32 %1, i32* %4, align 4
  call void @printSS(i32* %9)
  store i32 0, i32* %9, align 4
  %24 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %25 = bitcast float* %24 to i32*
  call void @printSS(i32* %25)
  store float 5.000000e-01, float* %24, align 4
  %26 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 1
  %27 = bitcast float* %26 to i32*
  call void @printSS(i32* %27)
  store float 0.000000e+00, float* %26, align 4
  call void @printLL(i32* %4)
  %28 = load i32, i32* %4, align 4
  call void @printSS(i32* %10)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %32, %2
  call void @printLL(i32* %10)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  call void @printLL(i32* %10)
  %33 = load i32, i32* %10, align 4
  %34 = sdiv i32 %33, 2
  call void @printSS(i32* %10)
  store i32 %34, i32* %10, align 4
  call void @printLL(i32* %9)
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  call void @printSS(i32* %9)
  store i32 %36, i32* %9, align 4
  br label %29

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %39 = bitcast float* %38 to i32*
  call void @printSS(i32* %39)
  store float 5.000000e-01, float* %38, align 4
  %40 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 1
  %41 = bitcast float* %40 to i32*
  call void @printSS(i32* %41)
  store float 0.000000e+00, float* %40, align 4
  call void @printSS(i32* %5)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %53, %37
  call void @printLL(i32* %5)
  %43 = load i32, i32* %5, align 4
  call void @printLL(i32* %4)
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  call void @printLL(i32* %5)
  %47 = load i32, i32* %5, align 4
  call void @printLL(i32* %9)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @reverse(i32 %47, i32 %48)
  call void @printLL(i32* %5)
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @new_index, i64 0, i64 %51
  call void @printSS(i32* %52)
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %46
  call void @printLL(i32* %5)
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  call void @printSS(i32* %5)
  store i32 %55, i32* %5, align 4
  br label %42

56:                                               ; preds = %42
  call void @printSS(i32* %5)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %75, %56
  call void @printLL(i32* %5)
  %58 = load i32, i32* %5, align 4
  call void @printLL(i32* %4)
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  call void @printLL(i32* %5)
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* @new_index, i64 0, i64 %63
  call void @printLL(i32* %64)
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %66
  %68 = bitcast %struct.complex** %3 to i32*
  call void @printLL(i32* %68)
  %69 = load %struct.complex*, %struct.complex** %3, align 8
  call void @printLL(i32* %5)
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.complex, %struct.complex* %69, i64 %71
  %73 = bitcast %struct.complex* %67 to i8*
  %74 = bitcast %struct.complex* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 4 %74, i64 8, i1 false)
  br label %75

75:                                               ; preds = %61
  call void @printLL(i32* %5)
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  call void @printSS(i32* %5)
  store i32 %77, i32* %5, align 4
  br label %57

78:                                               ; preds = %57
  call void @printSS(i32* %6)
  store i32 1, i32* %6, align 4
  call void @printLL(i32* %4)
  %79 = load i32, i32* %4, align 4
  %80 = sdiv i32 %79, 2
  call void @printSS(i32* %7)
  store i32 %80, i32* %7, align 4
  call void @printSS(i32* %5)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %278, %78
  call void @printLL(i32* %5)
  %82 = load i32, i32* %5, align 4
  call void @printLL(i32* %9)
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %281

85:                                               ; preds = %81
  call void @printLL(i32* %6)
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 8
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %281

89:                                               ; preds = %85
  call void @printSS(i32* %8)
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %270, %89
  call void @printLL(i32* %8)
  %91 = load i32, i32* %8, align 4
  call void @printLL(i32* %7)
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %273

94:                                               ; preds = %90
  call void @printLL(i32* %8)
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %95, 2
  call void @printLL(i32* %6)
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 %96, %97
  call void @printSS(i32* %11)
  store i32 %98, i32* %11, align 4
  call void @printLL(i32* %8)
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %100, 1
  call void @printLL(i32* %6)
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 %101, %102
  call void @printSS(i32* %12)
  store i32 %103, i32* %12, align 4
  call void @printSS(i32* %13)
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %266, %94
  call void @printLL(i32* %13)
  %105 = load i32, i32* %13, align 4
  call void @printLL(i32* %6)
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %269

108:                                              ; preds = %104
  call void @printLL(i32* %13)
  %109 = load i32, i32* %13, align 4
  %110 = sitofp i32 %109 to double
  %111 = fmul double 0x400921FB54442D18, %110
  call void @printLL(i32* %6)
  %112 = load i32, i32* %6, align 4
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %111, %113
  %115 = call double @cos(double %114) #5
  %116 = fptrunc double %115 to float
  %117 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %118 = bitcast float* %117 to i32*
  call void @printSS(i32* %118)
  store float %116, float* %117, align 4
  call void @printLL(i32* %13)
  %119 = load i32, i32* %13, align 4
  %120 = sitofp i32 %119 to double
  %121 = fmul double 0x400921FB54442D18, %120
  call void @printLL(i32* %6)
  %122 = load i32, i32* %6, align 4
  %123 = sitofp i32 %122 to double
  %124 = fdiv double %121, %123
  %125 = call double @sin(double %124) #5
  %126 = fneg double %125
  %127 = fptrunc double %126 to float
  %128 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %129 = bitcast float* %128 to i32*
  call void @printSS(i32* %129)
  store float %127, float* %128, align 4
  call void @printLL(i32* %12)
  %130 = load i32, i32* %12, align 4
  call void @printLL(i32* %13)
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %133
  %135 = bitcast %struct.complex* %18 to i8*
  %136 = bitcast %struct.complex* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 8 %136, i64 8, i1 false)
  %137 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 0
  %138 = bitcast float* %137 to i32*
  call void @printLL(i32* %138)
  %139 = load float, float* %137, align 4
  %140 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %141 = bitcast float* %140 to i32*
  call void @printLL(i32* %141)
  %142 = load float, float* %140, align 4
  %143 = fmul float %139, %142
  %144 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 1
  %145 = bitcast float* %144 to i32*
  call void @printLL(i32* %145)
  %146 = load float, float* %144, align 4
  %147 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %148 = bitcast float* %147 to i32*
  call void @printLL(i32* %148)
  %149 = load float, float* %147, align 4
  %150 = fmul float %146, %149
  %151 = fsub float %143, %150
  %152 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 0
  %153 = bitcast float* %152 to i32*
  call void @printSS(i32* %153)
  store float %151, float* %152, align 4
  %154 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 0
  %155 = bitcast float* %154 to i32*
  call void @printLL(i32* %155)
  %156 = load float, float* %154, align 4
  %157 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %158 = bitcast float* %157 to i32*
  call void @printLL(i32* %158)
  %159 = load float, float* %157, align 4
  %160 = fmul float %156, %159
  %161 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %162 = bitcast float* %161 to i32*
  call void @printLL(i32* %162)
  %163 = load float, float* %161, align 4
  %164 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 1
  %165 = bitcast float* %164 to i32*
  call void @printLL(i32* %165)
  %166 = load float, float* %164, align 4
  %167 = fmul float %163, %166
  %168 = fadd float %160, %167
  %169 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 1
  %170 = bitcast float* %169 to i32*
  call void @printSS(i32* %170)
  store float %168, float* %169, align 4
  call void @printLL(i32* %11)
  %171 = load i32, i32* %11, align 4
  call void @printLL(i32* %13)
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %174
  %176 = bitcast %struct.complex* %20 to i8*
  %177 = bitcast %struct.complex* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 8 %177, i64 8, i1 false)
  %178 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 0
  %179 = bitcast float* %178 to i32*
  call void @printLL(i32* %179)
  %180 = load float, float* %178, align 4
  %181 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 0
  %182 = bitcast float* %181 to i32*
  call void @printLL(i32* %182)
  %183 = load float, float* %181, align 4
  %184 = fadd float %180, %183
  %185 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 0
  %186 = bitcast float* %185 to i32*
  call void @printSS(i32* %186)
  store float %184, float* %185, align 4
  %187 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 1
  %188 = bitcast float* %187 to i32*
  call void @printLL(i32* %188)
  %189 = load float, float* %187, align 4
  %190 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 1
  %191 = bitcast float* %190 to i32*
  call void @printLL(i32* %191)
  %192 = load float, float* %190, align 4
  %193 = fadd float %189, %192
  %194 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 1
  %195 = bitcast float* %194 to i32*
  call void @printSS(i32* %195)
  store float %193, float* %194, align 4
  %196 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 0
  %197 = bitcast float* %196 to i32*
  call void @printLL(i32* %197)
  %198 = load float, float* %196, align 4
  %199 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 0
  %200 = bitcast float* %199 to i32*
  call void @printLL(i32* %200)
  %201 = load float, float* %199, align 4
  %202 = fsub float %198, %201
  %203 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 0
  %204 = bitcast float* %203 to i32*
  call void @printSS(i32* %204)
  store float %202, float* %203, align 4
  %205 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 1
  %206 = bitcast float* %205 to i32*
  call void @printLL(i32* %206)
  %207 = load float, float* %205, align 4
  %208 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 1
  %209 = bitcast float* %208 to i32*
  call void @printLL(i32* %209)
  %210 = load float, float* %208, align 4
  %211 = fsub float %207, %210
  %212 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 1
  %213 = bitcast float* %212 to i32*
  call void @printSS(i32* %213)
  store float %211, float* %212, align 4
  %214 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %215 = bitcast float* %214 to i32*
  call void @printLL(i32* %215)
  %216 = load float, float* %214, align 4
  %217 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 0
  %218 = bitcast float* %217 to i32*
  call void @printLL(i32* %218)
  %219 = load float, float* %217, align 4
  %220 = fmul float %216, %219
  %221 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 0
  %222 = bitcast float* %221 to i32*
  call void @printSS(i32* %222)
  store float %220, float* %221, align 4
  %223 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %224 = bitcast float* %223 to i32*
  call void @printLL(i32* %224)
  %225 = load float, float* %223, align 4
  %226 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 1
  %227 = bitcast float* %226 to i32*
  call void @printLL(i32* %227)
  %228 = load float, float* %226, align 4
  %229 = fmul float %225, %228
  %230 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 1
  %231 = bitcast float* %230 to i32*
  call void @printSS(i32* %231)
  store float %229, float* %230, align 4
  %232 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %233 = bitcast float* %232 to i32*
  call void @printLL(i32* %233)
  %234 = load float, float* %232, align 4
  %235 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 0
  %236 = bitcast float* %235 to i32*
  call void @printLL(i32* %236)
  %237 = load float, float* %235, align 4
  %238 = fmul float %234, %237
  %239 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 0
  %240 = bitcast float* %239 to i32*
  call void @printSS(i32* %240)
  store float %238, float* %239, align 4
  %241 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %242 = bitcast float* %241 to i32*
  call void @printLL(i32* %242)
  %243 = load float, float* %241, align 4
  %244 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 1
  %245 = bitcast float* %244 to i32*
  call void @printLL(i32* %245)
  %246 = load float, float* %244, align 4
  %247 = fmul float %243, %246
  %248 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 1
  %249 = bitcast float* %248 to i32*
  call void @printSS(i32* %249)
  store float %247, float* %248, align 4
  call void @printLL(i32* %11)
  %250 = load i32, i32* %11, align 4
  call void @printLL(i32* %13)
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %253
  %255 = bitcast %struct.complex* %254 to i8*
  %256 = bitcast %struct.complex* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 4 %256, i64 8, i1 false)
  call void @printLL(i32* %11)
  %257 = load i32, i32* %11, align 4
  call void @printLL(i32* %13)
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %257, %258
  call void @printLL(i32* %6)
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %262
  %264 = bitcast %struct.complex* %263 to i8*
  %265 = bitcast %struct.complex* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 4 %265, i64 8, i1 false)
  br label %266

266:                                              ; preds = %108
  call void @printLL(i32* %13)
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  call void @printSS(i32* %13)
  store i32 %268, i32* %13, align 4
  br label %104

269:                                              ; preds = %104
  br label %270

270:                                              ; preds = %269
  call void @printLL(i32* %8)
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  call void @printSS(i32* %8)
  store i32 %272, i32* %8, align 4
  br label %90

273:                                              ; preds = %90
  call void @printLL(i32* %6)
  %274 = load i32, i32* %6, align 4
  %275 = mul nsw i32 2, %274
  call void @printSS(i32* %6)
  store i32 %275, i32* %6, align 4
  call void @printLL(i32* %7)
  %276 = load i32, i32* %7, align 4
  %277 = sdiv i32 %276, 2
  call void @printSS(i32* %7)
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %273
  call void @printLL(i32* %5)
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  call void @printSS(i32* %5)
  store i32 %280, i32* %5, align 4
  br label %81

281:                                              ; preds = %88, %81
  call void @printLL(i32* %5)
  %282 = load i32, i32* %5, align 4
  call void @printSS(i32* %5)
  store i32 %282, i32* %5, align 4
  br label %283

283:                                              ; preds = %303, %281
  call void @printLL(i32* %5)
  %284 = load i32, i32* %5, align 4
  call void @printLL(i32* %9)
  %285 = load i32, i32* %9, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %283
  call void @printSS(i32* %8)
  store i32 0, i32* %8, align 4
  br label %288

288:                                              ; preds = %295, %287
  call void @printLL(i32* %8)
  %289 = load i32, i32* %8, align 4
  call void @printLL(i32* %7)
  %290 = load i32, i32* %7, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  call void @printLL(i32* %8)
  %293 = load i32, i32* %8, align 4
  call void @printLL(i32* %6)
  %294 = load i32, i32* %6, align 4
  call void @par_k(i32 %293, i32 %294)
  br label %295

295:                                              ; preds = %292
  call void @printLL(i32* %8)
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  call void @printSS(i32* %8)
  store i32 %297, i32* %8, align 4
  br label %288

298:                                              ; preds = %288
  call void @printLL(i32* %6)
  %299 = load i32, i32* %6, align 4
  %300 = mul nsw i32 2, %299
  call void @printSS(i32* %6)
  store i32 %300, i32* %6, align 4
  call void @printLL(i32* %7)
  %301 = load i32, i32* %7, align 4
  %302 = sdiv i32 %301, 2
  call void @printSS(i32* %7)
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %298
  call void @printLL(i32* %5)
  %304 = load i32, i32* %5, align 4
  %305 = add nsw i32 %304, 1
  call void @printSS(i32* %5)
  store i32 %305, i32* %5, align 4
  br label %283

306:                                              ; preds = %283
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  call void @printSS(i32* %1)
  store i32 0, i32* %1, align 4
  call void @FFT(%struct.complex* getelementptr inbounds ([256 x %struct.complex], [256 x %struct.complex]* @input, i64 0, i64 0), i32 256)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
