; ModuleID = 'test2.c'
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
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load double, double* %2, align 8
  %7 = fneg double %6
  br label %10

8:                                                ; preds = %1
  %9 = load double, double* %2, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi double [ %7, %5 ], [ %9, %8 ]
  ret double %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load double, double* %2, align 8
  %8 = fcmp ogt double %7, 0x401921FB54442D18
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load double, double* %2, align 8
  %11 = fsub double %10, 0x401921FB54442D18
  store double %11, double* %2, align 8
  br label %6

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %16, %12
  %14 = load double, double* %2, align 8
  %15 = fcmp olt double %14, 0xC01921FB54442D18
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load double, double* %2, align 8
  %18 = fadd double %17, 0x401921FB54442D18
  store double %18, double* %2, align 8
  br label %13

19:                                               ; preds = %13
  %20 = load double, double* %2, align 8
  store double %20, double* %4, align 8
  store double %20, double* %3, align 8
  %21 = load double, double* %4, align 8
  %22 = load double, double* %2, align 8
  %23 = load double, double* %2, align 8
  %24 = fmul double %22, %23
  %25 = fneg double %24
  %26 = fmul double %21, %25
  %27 = load i32, i32* %5, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double 2.000000e+00, %28
  %30 = load i32, i32* %5, align 4
  %31 = sitofp i32 %30 to double
  %32 = fmul double 2.000000e+00, %31
  %33 = fadd double %32, 1.000000e+00
  %34 = fmul double %29, %33
  %35 = fdiv double %26, %34
  store double %35, double* %4, align 8
  %36 = load double, double* %3, align 8
  %37 = load double, double* %4, align 8
  %38 = fadd double %36, %37
  store double %38, double* %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %45, %19
  %42 = load double, double* %4, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp oge double %43, 1.000000e-05
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load double, double* %4, align 8
  %47 = load double, double* %2, align 8
  %48 = load double, double* %2, align 8
  %49 = fmul double %47, %48
  %50 = fneg double %49
  %51 = fmul double %46, %50
  %52 = load i32, i32* %5, align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double 2.000000e+00, %53
  %55 = load i32, i32* %5, align 4
  %56 = sitofp i32 %55 to double
  %57 = fmul double 2.000000e+00, %56
  %58 = fadd double %57, 1.000000e+00
  %59 = fmul double %54, %58
  %60 = fdiv double %51, %59
  store double %60, double* %4, align 8
  %61 = load double, double* %3, align 8
  %62 = load double, double* %4, align 8
  %63 = fadd double %61, %62
  store double %63, double* %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %41

66:                                               ; preds = %41
  %67 = load double, double* %3, align 8
  ret double %67
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cos(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load double, double* %2, align 8
  %7 = fadd double %6, 0x3FF921FB54442D18
  store double %7, double* %2, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load double, double* %2, align 8
  %10 = fcmp ogt double %9, 0x401921FB54442D18
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load double, double* %2, align 8
  %13 = fsub double %12, 0x401921FB54442D18
  store double %13, double* %2, align 8
  br label %8

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %18, %14
  %16 = load double, double* %2, align 8
  %17 = fcmp olt double %16, 0xC01921FB54442D18
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load double, double* %2, align 8
  %20 = fadd double %19, 0x401921FB54442D18
  store double %20, double* %2, align 8
  br label %15

21:                                               ; preds = %15
  %22 = load double, double* %2, align 8
  store double %22, double* %4, align 8
  store double %22, double* %3, align 8
  %23 = load double, double* %4, align 8
  %24 = load double, double* %2, align 8
  %25 = load double, double* %2, align 8
  %26 = fmul double %24, %25
  %27 = fneg double %26
  %28 = fmul double %23, %27
  %29 = load i32, i32* %5, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double 2.000000e+00, %30
  %32 = load i32, i32* %5, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double 2.000000e+00, %33
  %35 = fadd double %34, 1.000000e+00
  %36 = fmul double %31, %35
  %37 = fdiv double %28, %36
  store double %37, double* %4, align 8
  %38 = load double, double* %3, align 8
  %39 = load double, double* %4, align 8
  %40 = fadd double %38, %39
  store double %40, double* %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %47, %21
  %44 = load double, double* %4, align 8
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = fcmp oge double %45, 1.000000e-05
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load double, double* %4, align 8
  %49 = load double, double* %2, align 8
  %50 = load double, double* %2, align 8
  %51 = fmul double %49, %50
  %52 = fneg double %51
  %53 = fmul double %48, %52
  %54 = load i32, i32* %5, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double 2.000000e+00, %55
  %57 = load i32, i32* %5, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double 2.000000e+00, %58
  %60 = fadd double %59, 1.000000e+00
  %61 = fmul double %56, %60
  %62 = fdiv double %53, %61
  store double %62, double* %4, align 8
  %63 = load double, double* %3, align 8
  %64 = load double, double* %4, align 8
  %65 = fadd double %63, %64
  store double %65, double* %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %43

68:                                               ; preds = %43
  %69 = load double, double* %3, align 8
  ret double %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reverse(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 2
  %16 = load i32, i32* %7, align 4
  %17 = srem i32 %16, 2
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %9

24:                                               ; preds = %9
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
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  store float 5.000000e-01, float* %17, align 4
  %18 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 1
  store float 0.000000e+00, float* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 %19, 2
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %154, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %157

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sitofp i32 %33 to double
  %35 = fmul double 0x400921FB54442D18, %34
  %36 = load i32, i32* %4, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  %39 = call double @cos(double %38) #5
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 0
  store float %40, float* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sitofp i32 %42 to double
  %44 = fmul double 0x400921FB54442D18, %43
  %45 = load i32, i32* %4, align 4
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %44, %46
  %48 = call double @sin(double %47) #5
  %49 = fneg double %48
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 1
  store float %50, float* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %55
  %57 = bitcast %struct.complex* %12 to i8*
  %58 = bitcast %struct.complex* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 8 %58, i64 8, i1 false)
  %59 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %60, %62
  %64 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 1
  %67 = load float, float* %66, align 4
  %68 = fmul float %65, %67
  %69 = fsub float %63, %68
  %70 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 0
  store float %69, float* %70, align 4
  %71 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 0
  %72 = load float, float* %71, align 4
  %73 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = fmul float %72, %74
  %76 = getelementptr inbounds %struct.complex, %struct.complex* %10, i32 0, i32 0
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds %struct.complex, %struct.complex* %12, i32 0, i32 1
  %79 = load float, float* %78, align 4
  %80 = fmul float %77, %79
  %81 = fadd float %75, %80
  %82 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 1
  store float %81, float* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %86
  %88 = bitcast %struct.complex* %14 to i8*
  %89 = bitcast %struct.complex* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = fadd float %91, %93
  %95 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 0
  store float %94, float* %95, align 4
  %96 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 1
  %99 = load float, float* %98, align 4
  %100 = fadd float %97, %99
  %101 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 1
  store float %100, float* %101, align 4
  %102 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 0
  %103 = load float, float* %102, align 4
  %104 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 0
  %105 = load float, float* %104, align 4
  %106 = fsub float %103, %105
  %107 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  store float %106, float* %107, align 4
  %108 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 1
  %109 = load float, float* %108, align 4
  %110 = getelementptr inbounds %struct.complex, %struct.complex* %13, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = fsub float %109, %111
  %113 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  store float %112, float* %113, align 4
  %114 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %115 = load float, float* %114, align 4
  %116 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = fmul float %115, %117
  %119 = getelementptr inbounds %struct.complex, %struct.complex* %8, i32 0, i32 0
  store float %118, float* %119, align 4
  %120 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %121 = load float, float* %120, align 4
  %122 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 1
  %123 = load float, float* %122, align 4
  %124 = fmul float %121, %123
  %125 = getelementptr inbounds %struct.complex, %struct.complex* %8, i32 0, i32 1
  store float %124, float* %125, align 4
  %126 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %127 = load float, float* %126, align 4
  %128 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %129 = load float, float* %128, align 4
  %130 = fmul float %127, %129
  %131 = getelementptr inbounds %struct.complex, %struct.complex* %9, i32 0, i32 0
  store float %130, float* %131, align 4
  %132 = getelementptr inbounds %struct.complex, %struct.complex* %11, i32 0, i32 0
  %133 = load float, float* %132, align 4
  %134 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %135 = load float, float* %134, align 4
  %136 = fmul float %133, %135
  %137 = getelementptr inbounds %struct.complex, %struct.complex* %9, i32 0, i32 1
  store float %136, float* %137, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %141
  %143 = bitcast %struct.complex* %142 to i8*
  %144 = bitcast %struct.complex* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 4 %144, i64 8, i1 false)
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %150
  %152 = bitcast %struct.complex* %151 to i8*
  %153 = bitcast %struct.complex* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 4 %153, i64 8, i1 false)
  br label %154

154:                                              ; preds = %32
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %28

157:                                              ; preds = %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
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
  store %struct.complex* %0, %struct.complex** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %23 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  store float 5.000000e-01, float* %23, align 4
  %24 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 1
  store float 0.000000e+00, float* %24, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %29, %2
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %26

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  store float 5.000000e-01, float* %35, align 4
  %36 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 1
  store float 0.000000e+00, float* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %48, %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @reverse(i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* @new_index, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %37

51:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* @new_index, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %61
  %63 = load %struct.complex*, %struct.complex** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.complex, %struct.complex* %63, i64 %65
  %67 = bitcast %struct.complex* %62 to i8*
  %68 = bitcast %struct.complex* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 %68, i64 8, i1 false)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %52

72:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %236, %72
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %239

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %80, 8
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %239

83:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %228, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %231

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 %89, 2
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %95, %96
  store i32 %97, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %224, %88
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %227

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double 0x400921FB54442D18, %104
  %106 = load i32, i32* %6, align 4
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %105, %107
  %109 = call double @cos(double %108) #5
  %110 = fptrunc double %109 to float
  %111 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  store float %110, float* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sitofp i32 %112 to double
  %114 = fmul double 0x400921FB54442D18, %113
  %115 = load i32, i32* %6, align 4
  %116 = sitofp i32 %115 to double
  %117 = fdiv double %114, %116
  %118 = call double @sin(double %117) #5
  %119 = fneg double %118
  %120 = fptrunc double %119 to float
  %121 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  store float %120, float* %121, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %125
  %127 = bitcast %struct.complex* %18 to i8*
  %128 = bitcast %struct.complex* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 8 %128, i64 8, i1 false)
  %129 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 0
  %130 = load float, float* %129, align 4
  %131 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %132 = load float, float* %131, align 4
  %133 = fmul float %130, %132
  %134 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 1
  %135 = load float, float* %134, align 4
  %136 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %137 = load float, float* %136, align 4
  %138 = fmul float %135, %137
  %139 = fsub float %133, %138
  %140 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 0
  store float %139, float* %140, align 4
  %141 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 0
  %142 = load float, float* %141, align 4
  %143 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 1
  %144 = load float, float* %143, align 4
  %145 = fmul float %142, %144
  %146 = getelementptr inbounds %struct.complex, %struct.complex* %16, i32 0, i32 0
  %147 = load float, float* %146, align 4
  %148 = getelementptr inbounds %struct.complex, %struct.complex* %18, i32 0, i32 1
  %149 = load float, float* %148, align 4
  %150 = fmul float %147, %149
  %151 = fadd float %145, %150
  %152 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 1
  store float %151, float* %152, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %156
  %158 = bitcast %struct.complex* %20 to i8*
  %159 = bitcast %struct.complex* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 8 %159, i64 8, i1 false)
  %160 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 0
  %161 = load float, float* %160, align 4
  %162 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 0
  %163 = load float, float* %162, align 4
  %164 = fadd float %161, %163
  %165 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 0
  store float %164, float* %165, align 4
  %166 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 1
  %167 = load float, float* %166, align 4
  %168 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 1
  %169 = load float, float* %168, align 4
  %170 = fadd float %167, %169
  %171 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 1
  store float %170, float* %171, align 4
  %172 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 0
  %173 = load float, float* %172, align 4
  %174 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 0
  %175 = load float, float* %174, align 4
  %176 = fsub float %173, %175
  %177 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 0
  store float %176, float* %177, align 4
  %178 = getelementptr inbounds %struct.complex, %struct.complex* %20, i32 0, i32 1
  %179 = load float, float* %178, align 4
  %180 = getelementptr inbounds %struct.complex, %struct.complex* %19, i32 0, i32 1
  %181 = load float, float* %180, align 4
  %182 = fsub float %179, %181
  %183 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 1
  store float %182, float* %183, align 4
  %184 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %185 = load float, float* %184, align 4
  %186 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 0
  %187 = load float, float* %186, align 4
  %188 = fmul float %185, %187
  %189 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 0
  store float %188, float* %189, align 4
  %190 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %191 = load float, float* %190, align 4
  %192 = getelementptr inbounds %struct.complex, %struct.complex* %21, i32 0, i32 1
  %193 = load float, float* %192, align 4
  %194 = fmul float %191, %193
  %195 = getelementptr inbounds %struct.complex, %struct.complex* %14, i32 0, i32 1
  store float %194, float* %195, align 4
  %196 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %197 = load float, float* %196, align 4
  %198 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 0
  %199 = load float, float* %198, align 4
  %200 = fmul float %197, %199
  %201 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 0
  store float %200, float* %201, align 4
  %202 = getelementptr inbounds %struct.complex, %struct.complex* %17, i32 0, i32 0
  %203 = load float, float* %202, align 4
  %204 = getelementptr inbounds %struct.complex, %struct.complex* %22, i32 0, i32 1
  %205 = load float, float* %204, align 4
  %206 = fmul float %203, %205
  %207 = getelementptr inbounds %struct.complex, %struct.complex* %15, i32 0, i32 1
  store float %206, float* %207, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %211
  %213 = bitcast %struct.complex* %212 to i8*
  %214 = bitcast %struct.complex* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 4 %214, i64 8, i1 false)
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [256 x %struct.complex], [256 x %struct.complex]* @TF, i64 0, i64 %220
  %222 = bitcast %struct.complex* %221 to i8*
  %223 = bitcast %struct.complex* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 4 %223, i64 8, i1 false)
  br label %224

224:                                              ; preds = %102
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %98

227:                                              ; preds = %98
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %84

231:                                              ; preds = %84
  %232 = load i32, i32* %6, align 4
  %233 = mul nsw i32 2, %232
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %7, align 4
  %235 = sdiv i32 %234, 2
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %75

239:                                              ; preds = %82, %75
  %240 = load i32, i32* %5, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %261, %239
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %264

245:                                              ; preds = %241
  store i32 0, i32* %8, align 4
  br label %246

246:                                              ; preds = %253, %245
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %6, align 4
  call void @par_k(i32 %251, i32 %252)
  br label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %246

256:                                              ; preds = %246
  %257 = load i32, i32* %6, align 4
  %258 = mul nsw i32 2, %257
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %7, align 4
  %260 = sdiv i32 %259, 2
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %256
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %241

264:                                              ; preds = %241
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @FFT(%struct.complex* getelementptr inbounds ([256 x %struct.complex], [256 x %struct.complex]* @input, i64 0, i64 0), i32 256)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
