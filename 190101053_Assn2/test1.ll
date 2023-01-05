; ModuleID = 'test1.c'
source_filename = "test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@OMEGA = dso_local global float 0x3FC99999A0000000, align 4
@TAU = dso_local global float 5.000000e-01, align 4
@FORCING = dso_local global float 0x4080624DE0000000, align 4
@KVISC = dso_local global float 1.500000e+00, align 4
@cx = dso_local global [9 x i32] [i32 1, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1, i32 1, i32 0], align 16
@cy = dso_local global [9 x i32] [i32 0, i32 1, i32 0, i32 -1, i32 1, i32 1, i32 -1, i32 -1, i32 0], align 16
@jx = common dso_local global [512 x [512 x float]] zeroinitializer, align 16
@jy = common dso_local global [512 x [512 x float]] zeroinitializer, align 16
@rho = common dso_local global [512 x [512 x float]] zeroinitializer, align 16
@f = common dso_local global [512 x [512 x [512 x float]]] zeroinitializer, align 16
@fprop = common dso_local global [512 x [512 x [512 x float]]] zeroinitializer, align 16
@u = common dso_local global [512 x [512 x float]] zeroinitializer, align 16
@v = common dso_local global [512 x [512 x float]] zeroinitializer, align 16
@feq = common dso_local global [512 x [512 x [512 x float]]] zeroinitializer, align 16
@UX = common dso_local global float 0.000000e+00, align 4
@force = common dso_local global float 0.000000e+00, align 4
@uprofile = common dso_local global [512 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"lbmout.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %5.5f\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"gnu.cmd\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"set term postscript eps enhanced color \0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"set output \22lbmout.eps\22 \0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"set xlabel \22Iterations\22 \0A set ylabel \22uprofile (velocities)\22 \0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"plot \00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\22lbmout.txt\22 using 1:%d title \22uprofile%d\22,\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\22lbmout.txt\22 using 1:%d title \22uprofile%d\22\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"gnuplot gnu.cmd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @JxJyRhoFFprop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 512
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jx, i64 0, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x float], [512 x float]* %19, i64 0, i64 %21
  store float 0.000000e+00, float* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jy, i64 0, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x float], [512 x float]* %25, i64 0, i64 %27
  store float 0.000000e+00, float* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %30
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x float], [512 x float]* %31, i64 0, i64 %33
  store float 1.000000e+00, float* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 0), i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x float], [512 x float]* %37, i64 0, i64 %39
  store float 0.000000e+00, float* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 0), i64 0, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [512 x float], [512 x float]* %43, i64 0, i64 %45
  store float 0.000000e+00, float* %46, align 4
  br label %47

47:                                               ; preds = %16
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %13

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %8

54:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initFValues(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %391, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %394

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %387, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 512
  br i1 %18, label %19, label %390

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jx, i64 0, i64 %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x float], [512 x float]* %22, i64 0, i64 %24
  %26 = load float, float* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %28
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [512 x float], [512 x float]* %29, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fdiv float %26, %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @u, i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x float], [512 x float]* %37, i64 0, i64 %39
  store float %34, float* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jy, i64 0, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [512 x float], [512 x float]* %43, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x float], [512 x float]* %50, i64 0, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fdiv float %47, %54
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @v, i64 0, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [512 x float], [512 x float]* %58, i64 0, i64 %60
  store float %55, float* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [512 x float], [512 x float]* %64, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  store float %68, float* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @u, i64 0, i64 %70
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [512 x float], [512 x float]* %71, i64 0, i64 %73
  %75 = load float, float* %74, align 4
  store float %75, float* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @v, i64 0, i64 %77
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x float], [512 x float]* %78, i64 0, i64 %80
  %82 = load float, float* %81, align 4
  store float %82, float* %9, align 4
  %83 = load float, float* %7, align 4
  %84 = fpext float %83 to double
  %85 = fdiv double %84, 9.000000e+00
  %86 = load float, float* %8, align 4
  %87 = fpext float %86 to double
  %88 = fmul double 3.000000e+00, %87
  %89 = fadd double 1.000000e+00, %88
  %90 = load float, float* %8, align 4
  %91 = fpext float %90 to double
  %92 = fmul double 4.500000e+00, %91
  %93 = load float, float* %8, align 4
  %94 = fpext float %93 to double
  %95 = fmul double %92, %94
  %96 = fadd double %89, %95
  %97 = load float, float* %8, align 4
  %98 = load float, float* %8, align 4
  %99 = fmul float %97, %98
  %100 = load float, float* %9, align 4
  %101 = load float, float* %9, align 4
  %102 = fmul float %100, %101
  %103 = fadd float %99, %102
  %104 = fpext float %103 to double
  %105 = fmul double 1.500000e+00, %104
  %106 = fsub double %96, %105
  %107 = fmul double %85, %106
  %108 = fptrunc double %107 to float
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 1), i64 0, i64 %110
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x float], [512 x float]* %111, i64 0, i64 %113
  store float %108, float* %114, align 4
  %115 = load float, float* %7, align 4
  %116 = fpext float %115 to double
  %117 = fdiv double %116, 9.000000e+00
  %118 = load float, float* %8, align 4
  %119 = fpext float %118 to double
  %120 = fmul double 3.000000e+00, %119
  %121 = fadd double 1.000000e+00, %120
  %122 = load float, float* %8, align 4
  %123 = fpext float %122 to double
  %124 = fmul double 4.500000e+00, %123
  %125 = load float, float* %8, align 4
  %126 = fpext float %125 to double
  %127 = fmul double %124, %126
  %128 = fadd double %121, %127
  %129 = load float, float* %8, align 4
  %130 = load float, float* %8, align 4
  %131 = fmul float %129, %130
  %132 = load float, float* %9, align 4
  %133 = load float, float* %9, align 4
  %134 = fmul float %132, %133
  %135 = fadd float %131, %134
  %136 = fpext float %135 to double
  %137 = fmul double 1.500000e+00, %136
  %138 = fsub double %128, %137
  %139 = fmul double %117, %138
  %140 = fptrunc double %139 to float
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 2), i64 0, i64 %142
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [512 x float], [512 x float]* %143, i64 0, i64 %145
  store float %140, float* %146, align 4
  %147 = load float, float* %7, align 4
  %148 = fpext float %147 to double
  %149 = fdiv double %148, 9.000000e+00
  %150 = load float, float* %8, align 4
  %151 = fpext float %150 to double
  %152 = fmul double 3.000000e+00, %151
  %153 = fsub double 1.000000e+00, %152
  %154 = load float, float* %8, align 4
  %155 = fpext float %154 to double
  %156 = fmul double 4.500000e+00, %155
  %157 = load float, float* %8, align 4
  %158 = fpext float %157 to double
  %159 = fmul double %156, %158
  %160 = fadd double %153, %159
  %161 = load float, float* %8, align 4
  %162 = load float, float* %8, align 4
  %163 = fmul float %161, %162
  %164 = load float, float* %9, align 4
  %165 = load float, float* %9, align 4
  %166 = fmul float %164, %165
  %167 = fadd float %163, %166
  %168 = fpext float %167 to double
  %169 = fmul double 1.500000e+00, %168
  %170 = fsub double %160, %169
  %171 = fmul double %149, %170
  %172 = fptrunc double %171 to float
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 3), i64 0, i64 %174
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [512 x float], [512 x float]* %175, i64 0, i64 %177
  store float %172, float* %178, align 4
  %179 = load float, float* %7, align 4
  %180 = fpext float %179 to double
  %181 = fdiv double %180, 9.000000e+00
  %182 = load float, float* %8, align 4
  %183 = fpext float %182 to double
  %184 = fmul double 3.000000e+00, %183
  %185 = fsub double 1.000000e+00, %184
  %186 = load float, float* %8, align 4
  %187 = fpext float %186 to double
  %188 = fmul double 4.500000e+00, %187
  %189 = load float, float* %8, align 4
  %190 = fpext float %189 to double
  %191 = fmul double %188, %190
  %192 = fadd double %185, %191
  %193 = load float, float* %8, align 4
  %194 = load float, float* %8, align 4
  %195 = fmul float %193, %194
  %196 = load float, float* %9, align 4
  %197 = load float, float* %9, align 4
  %198 = fmul float %196, %197
  %199 = fadd float %195, %198
  %200 = fpext float %199 to double
  %201 = fmul double 1.500000e+00, %200
  %202 = fsub double %192, %201
  %203 = fmul double %181, %202
  %204 = fptrunc double %203 to float
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 4), i64 0, i64 %206
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [512 x float], [512 x float]* %207, i64 0, i64 %209
  store float %204, float* %210, align 4
  %211 = load float, float* %7, align 4
  %212 = fpext float %211 to double
  %213 = fdiv double %212, 3.600000e+01
  %214 = load float, float* %8, align 4
  %215 = load float, float* %9, align 4
  %216 = fadd float %214, %215
  %217 = fpext float %216 to double
  %218 = fmul double 3.000000e+00, %217
  %219 = fadd double 1.000000e+00, %218
  %220 = load float, float* %8, align 4
  %221 = load float, float* %8, align 4
  %222 = fadd float %220, %221
  %223 = fpext float %222 to double
  %224 = fmul double 4.500000e+00, %223
  %225 = load float, float* %8, align 4
  %226 = load float, float* %8, align 4
  %227 = fadd float %225, %226
  %228 = fpext float %227 to double
  %229 = fmul double %224, %228
  %230 = fadd double %219, %229
  %231 = load float, float* %8, align 4
  %232 = load float, float* %8, align 4
  %233 = fmul float %231, %232
  %234 = load float, float* %9, align 4
  %235 = load float, float* %9, align 4
  %236 = fmul float %234, %235
  %237 = fadd float %233, %236
  %238 = fpext float %237 to double
  %239 = fmul double 1.500000e+00, %238
  %240 = fsub double %230, %239
  %241 = fmul double %213, %240
  %242 = fptrunc double %241 to float
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 5), i64 0, i64 %244
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [512 x float], [512 x float]* %245, i64 0, i64 %247
  store float %242, float* %248, align 4
  %249 = load float, float* %7, align 4
  %250 = fpext float %249 to double
  %251 = fdiv double %250, 3.600000e+01
  %252 = load float, float* %8, align 4
  %253 = fneg float %252
  %254 = load float, float* %9, align 4
  %255 = fadd float %253, %254
  %256 = fpext float %255 to double
  %257 = fmul double 3.000000e+00, %256
  %258 = fadd double 1.000000e+00, %257
  %259 = load float, float* %8, align 4
  %260 = fneg float %259
  %261 = load float, float* %8, align 4
  %262 = fadd float %260, %261
  %263 = fpext float %262 to double
  %264 = fmul double 4.500000e+00, %263
  %265 = load float, float* %8, align 4
  %266 = load float, float* %8, align 4
  %267 = fadd float %265, %266
  %268 = fpext float %267 to double
  %269 = fmul double %264, %268
  %270 = fadd double %258, %269
  %271 = load float, float* %8, align 4
  %272 = load float, float* %8, align 4
  %273 = fmul float %271, %272
  %274 = load float, float* %9, align 4
  %275 = load float, float* %9, align 4
  %276 = fmul float %274, %275
  %277 = fadd float %273, %276
  %278 = fpext float %277 to double
  %279 = fmul double 1.500000e+00, %278
  %280 = fsub double %270, %279
  %281 = fmul double %251, %280
  %282 = fptrunc double %281 to float
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 6), i64 0, i64 %284
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [512 x float], [512 x float]* %285, i64 0, i64 %287
  store float %282, float* %288, align 4
  %289 = load float, float* %7, align 4
  %290 = fpext float %289 to double
  %291 = fdiv double %290, 3.600000e+01
  %292 = load float, float* %8, align 4
  %293 = load float, float* %9, align 4
  %294 = fadd float %292, %293
  %295 = fpext float %294 to double
  %296 = fmul double 3.000000e+00, %295
  %297 = fsub double 1.000000e+00, %296
  %298 = load float, float* %8, align 4
  %299 = load float, float* %8, align 4
  %300 = fadd float %298, %299
  %301 = fpext float %300 to double
  %302 = fmul double 4.500000e+00, %301
  %303 = load float, float* %8, align 4
  %304 = load float, float* %8, align 4
  %305 = fadd float %303, %304
  %306 = fpext float %305 to double
  %307 = fmul double %302, %306
  %308 = fadd double %297, %307
  %309 = load float, float* %8, align 4
  %310 = load float, float* %8, align 4
  %311 = fmul float %309, %310
  %312 = load float, float* %9, align 4
  %313 = load float, float* %9, align 4
  %314 = fmul float %312, %313
  %315 = fadd float %311, %314
  %316 = fpext float %315 to double
  %317 = fmul double 1.500000e+00, %316
  %318 = fsub double %308, %317
  %319 = fmul double %291, %318
  %320 = fptrunc double %319 to float
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 7), i64 0, i64 %322
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [512 x float], [512 x float]* %323, i64 0, i64 %325
  store float %320, float* %326, align 4
  %327 = load float, float* %7, align 4
  %328 = fpext float %327 to double
  %329 = fdiv double %328, 3.600000e+01
  %330 = load float, float* %8, align 4
  %331 = load float, float* %9, align 4
  %332 = fsub float %330, %331
  %333 = fpext float %332 to double
  %334 = fmul double 3.000000e+00, %333
  %335 = fadd double 1.000000e+00, %334
  %336 = load float, float* %8, align 4
  %337 = load float, float* %8, align 4
  %338 = fsub float %336, %337
  %339 = fpext float %338 to double
  %340 = fmul double 4.500000e+00, %339
  %341 = load float, float* %8, align 4
  %342 = load float, float* %8, align 4
  %343 = fadd float %341, %342
  %344 = fpext float %343 to double
  %345 = fmul double %340, %344
  %346 = fadd double %335, %345
  %347 = load float, float* %8, align 4
  %348 = load float, float* %8, align 4
  %349 = fmul float %347, %348
  %350 = load float, float* %9, align 4
  %351 = load float, float* %9, align 4
  %352 = fmul float %350, %351
  %353 = fadd float %349, %352
  %354 = fpext float %353 to double
  %355 = fmul double 1.500000e+00, %354
  %356 = fsub double %346, %355
  %357 = fmul double %329, %356
  %358 = fptrunc double %357 to float
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 8), i64 0, i64 %360
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [512 x float], [512 x float]* %361, i64 0, i64 %363
  store float %358, float* %364, align 4
  %365 = load float, float* %7, align 4
  %366 = fpext float %365 to double
  %367 = fmul double %366, 4.000000e+00
  %368 = fdiv double %367, 9.000000e+00
  %369 = load float, float* %8, align 4
  %370 = load float, float* %8, align 4
  %371 = fmul float %369, %370
  %372 = load float, float* %9, align 4
  %373 = load float, float* %9, align 4
  %374 = fmul float %372, %373
  %375 = fadd float %371, %374
  %376 = fpext float %375 to double
  %377 = fmul double 1.500000e+00, %376
  %378 = fsub double 1.000000e+00, %377
  %379 = fmul double %368, %378
  %380 = fptrunc double %379 to float
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 9), i64 0, i64 %382
  %384 = load i32, i32* %6, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [512 x float], [512 x float]* %383, i64 0, i64 %385
  store float %380, float* %386, align 4
  br label %387

387:                                              ; preds = %19
  %388 = load i32, i32* %6, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %6, align 4
  br label %16

390:                                              ; preds = %16
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %5, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %5, align 4
  br label %11

394:                                              ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CopyFpropAndFeq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %58, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 512
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 9
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %24, i64 0, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x float], [512 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %34, i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x float], [512 x float]* %37, i64 0, i64 %39
  store float %31, float* %40, align 4
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 %46
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %47, i64 0, i64 %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x float], [512 x float]* %50, i64 0, i64 %52
  store float 0.000000e+00, float* %53, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %14

57:                                               ; preds = %14
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %9

61:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load float, float* @FORCING, align 4
  %4 = fpext float %3 to double
  %5 = fmul double 5.000000e-01, %4
  %6 = fmul double %5, 5.120000e+02
  %7 = fmul double %6, 5.120000e+02
  %8 = load float, float* @KVISC, align 4
  %9 = fpext float %8 to double
  %10 = fdiv double %7, %9
  %11 = fptrunc double %10 to float
  store float %11, float* @UX, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %19, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 512
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 8
  call void @JxJyRhoFFprop(i32 %16, i32 %18)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 8
  store i32 %21, i32* %1, align 4
  br label %12

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 8
  call void @initFValues(i32 %27, i32 %29)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 8
  store i32 %32, i32* %2, align 4
  br label %23

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %41, %33
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 512
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 8
  call void @CopyFpropAndFeq(i32 %38, i32 %40)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %2, align 4
  br label %34

44:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ValueUpdateMain(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %490, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %493

16:                                               ; preds = %12
  store i32 2, i32* %6, align 4
  br label %17

17:                                               ; preds = %448, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 511
  br i1 %19, label %20, label %451

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [512 x float], [512 x float]* %23, i64 0, i64 %25
  %27 = load float, float* %26, align 4
  store float %27, float* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @u, i64 0, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [512 x float], [512 x float]* %30, i64 0, i64 %32
  %34 = load float, float* %33, align 4
  store float %34, float* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @v, i64 0, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x float], [512 x float]* %37, i64 0, i64 %39
  %41 = load float, float* %40, align 4
  store float %41, float* %10, align 4
  %42 = load float, float* %8, align 4
  %43 = fpext float %42 to double
  %44 = fdiv double %43, 9.000000e+00
  %45 = load float, float* %9, align 4
  %46 = fmul float 3.000000e+00, %45
  %47 = fadd float 1.000000e+00, %46
  %48 = fpext float %47 to double
  %49 = load float, float* %9, align 4
  %50 = fpext float %49 to double
  %51 = fmul double 4.500000e+00, %50
  %52 = load float, float* %9, align 4
  %53 = fpext float %52 to double
  %54 = fmul double %51, %53
  %55 = fadd double %48, %54
  %56 = load float, float* %9, align 4
  %57 = load float, float* %9, align 4
  %58 = fmul float %56, %57
  %59 = load float, float* %10, align 4
  %60 = load float, float* %10, align 4
  %61 = fmul float %59, %60
  %62 = fadd float %58, %61
  %63 = fpext float %62 to double
  %64 = fmul double 1.500000e+00, %63
  %65 = fsub double %55, %64
  %66 = fmul double %44, %65
  %67 = fptrunc double %66 to float
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 1), i64 0, i64 %69
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [512 x float], [512 x float]* %70, i64 0, i64 %72
  store float %67, float* %73, align 4
  %74 = load float, float* %8, align 4
  %75 = fpext float %74 to double
  %76 = fdiv double %75, 9.000000e+00
  %77 = load float, float* %10, align 4
  %78 = fmul float 3.000000e+00, %77
  %79 = fadd float 1.000000e+00, %78
  %80 = fpext float %79 to double
  %81 = load float, float* %10, align 4
  %82 = fpext float %81 to double
  %83 = fmul double 4.500000e+00, %82
  %84 = load float, float* %10, align 4
  %85 = fpext float %84 to double
  %86 = fmul double %83, %85
  %87 = fadd double %80, %86
  %88 = load float, float* %9, align 4
  %89 = load float, float* %9, align 4
  %90 = fmul float %88, %89
  %91 = load float, float* %10, align 4
  %92 = load float, float* %10, align 4
  %93 = fmul float %91, %92
  %94 = fadd float %90, %93
  %95 = fpext float %94 to double
  %96 = fmul double 1.500000e+00, %95
  %97 = fsub double %87, %96
  %98 = fmul double %76, %97
  %99 = fptrunc double %98 to float
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 2), i64 0, i64 %101
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [512 x float], [512 x float]* %102, i64 0, i64 %104
  store float %99, float* %105, align 4
  %106 = load float, float* %8, align 4
  %107 = fpext float %106 to double
  %108 = fdiv double %107, 9.000000e+00
  %109 = load float, float* %9, align 4
  %110 = fmul float 3.000000e+00, %109
  %111 = fsub float 1.000000e+00, %110
  %112 = fpext float %111 to double
  %113 = load float, float* %9, align 4
  %114 = fpext float %113 to double
  %115 = fmul double 4.500000e+00, %114
  %116 = load float, float* %9, align 4
  %117 = fpext float %116 to double
  %118 = fmul double %115, %117
  %119 = fadd double %112, %118
  %120 = load float, float* %9, align 4
  %121 = load float, float* %9, align 4
  %122 = fmul float %120, %121
  %123 = load float, float* %10, align 4
  %124 = load float, float* %10, align 4
  %125 = fmul float %123, %124
  %126 = fadd float %122, %125
  %127 = fpext float %126 to double
  %128 = fmul double 1.500000e+00, %127
  %129 = fsub double %119, %128
  %130 = fmul double %108, %129
  %131 = fptrunc double %130 to float
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 3), i64 0, i64 %133
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [512 x float], [512 x float]* %134, i64 0, i64 %136
  store float %131, float* %137, align 4
  %138 = load float, float* %8, align 4
  %139 = fpext float %138 to double
  %140 = fdiv double %139, 9.000000e+00
  %141 = load float, float* %10, align 4
  %142 = fmul float 3.000000e+00, %141
  %143 = fsub float 1.000000e+00, %142
  %144 = fpext float %143 to double
  %145 = load float, float* %10, align 4
  %146 = fpext float %145 to double
  %147 = fmul double 4.500000e+00, %146
  %148 = load float, float* %10, align 4
  %149 = fpext float %148 to double
  %150 = fmul double %147, %149
  %151 = fadd double %144, %150
  %152 = load float, float* %9, align 4
  %153 = load float, float* %9, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %10, align 4
  %156 = load float, float* %10, align 4
  %157 = fmul float %155, %156
  %158 = fadd float %154, %157
  %159 = fpext float %158 to double
  %160 = fmul double 1.500000e+00, %159
  %161 = fsub double %151, %160
  %162 = fmul double %140, %161
  %163 = fptrunc double %162 to float
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 4), i64 0, i64 %165
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [512 x float], [512 x float]* %166, i64 0, i64 %168
  store float %163, float* %169, align 4
  %170 = load float, float* %8, align 4
  %171 = fpext float %170 to double
  %172 = fdiv double %171, 3.600000e+01
  %173 = load float, float* %9, align 4
  %174 = load float, float* %10, align 4
  %175 = fadd float %173, %174
  %176 = fmul float 3.000000e+00, %175
  %177 = fadd float 1.000000e+00, %176
  %178 = fpext float %177 to double
  %179 = load float, float* %9, align 4
  %180 = load float, float* %10, align 4
  %181 = fadd float %179, %180
  %182 = fpext float %181 to double
  %183 = fmul double 4.500000e+00, %182
  %184 = load float, float* %9, align 4
  %185 = load float, float* %10, align 4
  %186 = fadd float %184, %185
  %187 = fpext float %186 to double
  %188 = fmul double %183, %187
  %189 = fadd double %178, %188
  %190 = load float, float* %9, align 4
  %191 = load float, float* %9, align 4
  %192 = fmul float %190, %191
  %193 = load float, float* %10, align 4
  %194 = load float, float* %10, align 4
  %195 = fmul float %193, %194
  %196 = fadd float %192, %195
  %197 = fpext float %196 to double
  %198 = fmul double 1.500000e+00, %197
  %199 = fsub double %189, %198
  %200 = fmul double %172, %199
  %201 = fptrunc double %200 to float
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 5), i64 0, i64 %203
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [512 x float], [512 x float]* %204, i64 0, i64 %206
  store float %201, float* %207, align 4
  %208 = load float, float* %8, align 4
  %209 = fpext float %208 to double
  %210 = fdiv double %209, 3.600000e+01
  %211 = load float, float* %9, align 4
  %212 = fneg float %211
  %213 = load float, float* %10, align 4
  %214 = fadd float %212, %213
  %215 = fmul float 3.000000e+00, %214
  %216 = fadd float 1.000000e+00, %215
  %217 = fpext float %216 to double
  %218 = load float, float* %9, align 4
  %219 = fneg float %218
  %220 = load float, float* %10, align 4
  %221 = fadd float %219, %220
  %222 = fpext float %221 to double
  %223 = fmul double 4.500000e+00, %222
  %224 = load float, float* %9, align 4
  %225 = fneg float %224
  %226 = load float, float* %10, align 4
  %227 = fadd float %225, %226
  %228 = fpext float %227 to double
  %229 = fmul double %223, %228
  %230 = fadd double %217, %229
  %231 = load float, float* %9, align 4
  %232 = load float, float* %9, align 4
  %233 = fmul float %231, %232
  %234 = load float, float* %10, align 4
  %235 = load float, float* %10, align 4
  %236 = fmul float %234, %235
  %237 = fadd float %233, %236
  %238 = fpext float %237 to double
  %239 = fmul double 1.500000e+00, %238
  %240 = fsub double %230, %239
  %241 = fmul double %210, %240
  %242 = fptrunc double %241 to float
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 6), i64 0, i64 %244
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [512 x float], [512 x float]* %245, i64 0, i64 %247
  store float %242, float* %248, align 4
  %249 = load float, float* %8, align 4
  %250 = fpext float %249 to double
  %251 = fdiv double %250, 3.600000e+01
  %252 = load float, float* %9, align 4
  %253 = load float, float* %10, align 4
  %254 = fadd float %252, %253
  %255 = fmul float 3.000000e+00, %254
  %256 = fsub float 1.000000e+00, %255
  %257 = fpext float %256 to double
  %258 = load float, float* %9, align 4
  %259 = load float, float* %10, align 4
  %260 = fadd float %258, %259
  %261 = fpext float %260 to double
  %262 = fmul double 4.500000e+00, %261
  %263 = load float, float* %9, align 4
  %264 = load float, float* %10, align 4
  %265 = fadd float %263, %264
  %266 = fpext float %265 to double
  %267 = fmul double %262, %266
  %268 = fadd double %257, %267
  %269 = load float, float* %9, align 4
  %270 = load float, float* %9, align 4
  %271 = fmul float %269, %270
  %272 = load float, float* %10, align 4
  %273 = load float, float* %10, align 4
  %274 = fmul float %272, %273
  %275 = fadd float %271, %274
  %276 = fpext float %275 to double
  %277 = fmul double 1.500000e+00, %276
  %278 = fsub double %268, %277
  %279 = fmul double %251, %278
  %280 = fptrunc double %279 to float
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 7), i64 0, i64 %282
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x float], [512 x float]* %283, i64 0, i64 %285
  store float %280, float* %286, align 4
  %287 = load float, float* %8, align 4
  %288 = fpext float %287 to double
  %289 = fdiv double %288, 3.600000e+01
  %290 = load float, float* %9, align 4
  %291 = load float, float* %10, align 4
  %292 = fsub float %290, %291
  %293 = fmul float 3.000000e+00, %292
  %294 = fsub float 1.000000e+00, %293
  %295 = fpext float %294 to double
  %296 = load float, float* %9, align 4
  %297 = load float, float* %10, align 4
  %298 = fsub float %296, %297
  %299 = fpext float %298 to double
  %300 = fmul double 4.500000e+00, %299
  %301 = load float, float* %9, align 4
  %302 = load float, float* %10, align 4
  %303 = fsub float %301, %302
  %304 = fpext float %303 to double
  %305 = fmul double %300, %304
  %306 = fadd double %295, %305
  %307 = load float, float* %9, align 4
  %308 = load float, float* %9, align 4
  %309 = fmul float %307, %308
  %310 = load float, float* %10, align 4
  %311 = load float, float* %10, align 4
  %312 = fmul float %310, %311
  %313 = fadd float %309, %312
  %314 = fpext float %313 to double
  %315 = fmul double 1.500000e+00, %314
  %316 = fsub double %306, %315
  %317 = fmul double %289, %316
  %318 = fptrunc double %317 to float
  %319 = load i32, i32* %5, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 8), i64 0, i64 %320
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [512 x float], [512 x float]* %321, i64 0, i64 %323
  store float %318, float* %324, align 4
  %325 = load float, float* %8, align 4
  %326 = fpext float %325 to double
  %327 = fmul double %326, 4.000000e+00
  %328 = fdiv double %327, 3.600000e+01
  %329 = load float, float* %9, align 4
  %330 = load float, float* %9, align 4
  %331 = fmul float %329, %330
  %332 = load float, float* %10, align 4
  %333 = load float, float* %10, align 4
  %334 = fmul float %332, %333
  %335 = fadd float %331, %334
  %336 = fpext float %335 to double
  %337 = fmul double 1.500000e+00, %336
  %338 = fsub double 1.000000e+00, %337
  %339 = fmul double %328, %338
  %340 = fptrunc double %339 to float
  %341 = load i32, i32* %5, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 9), i64 0, i64 %342
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [512 x float], [512 x float]* %343, i64 0, i64 %345
  store float %340, float* %346, align 4
  store i32 0, i32* %7, align 4
  br label %347

347:                                              ; preds = %390, %20
  %348 = load i32, i32* %7, align 4
  %349 = icmp slt i32 %348, 9
  br i1 %349, label %350, label %393

350:                                              ; preds = %347
  %351 = load float, float* @OMEGA, align 4
  %352 = fpext float %351 to double
  %353 = fsub double 1.000000e+00, %352
  %354 = load i32, i32* %7, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %355
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %356, i64 0, i64 %358
  %360 = load i32, i32* %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [512 x float], [512 x float]* %359, i64 0, i64 %361
  %363 = load float, float* %362, align 4
  %364 = fpext float %363 to double
  %365 = fmul double %353, %364
  %366 = load float, float* @OMEGA, align 4
  %367 = load i32, i32* %7, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @feq, i64 0, i64 %368
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %369, i64 0, i64 %371
  %373 = load i32, i32* %6, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [512 x float], [512 x float]* %372, i64 0, i64 %374
  %376 = load float, float* %375, align 4
  %377 = fmul float %366, %376
  %378 = fpext float %377 to double
  %379 = fadd double %365, %378
  %380 = fptrunc double %379 to float
  %381 = load i32, i32* %7, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 %382
  %384 = load i32, i32* %5, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %383, i64 0, i64 %385
  %387 = load i32, i32* %6, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [512 x float], [512 x float]* %386, i64 0, i64 %388
  store float %380, float* %389, align 4
  br label %390

390:                                              ; preds = %350
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %7, align 4
  br label %347

393:                                              ; preds = %347
  %394 = load float, float* @force, align 4
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 1), i64 0, i64 %396
  %398 = load i32, i32* %6, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [512 x float], [512 x float]* %397, i64 0, i64 %399
  %401 = load float, float* %400, align 4
  %402 = fadd float %401, %394
  store float %402, float* %400, align 4
  %403 = load float, float* @force, align 4
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 3), i64 0, i64 %405
  %407 = load i32, i32* %6, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [512 x float], [512 x float]* %406, i64 0, i64 %408
  %410 = load float, float* %409, align 4
  %411 = fsub float %410, %403
  store float %411, float* %409, align 4
  %412 = load float, float* @force, align 4
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 5), i64 0, i64 %414
  %416 = load i32, i32* %6, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [512 x float], [512 x float]* %415, i64 0, i64 %417
  %419 = load float, float* %418, align 4
  %420 = fadd float %419, %412
  store float %420, float* %418, align 4
  %421 = load float, float* @force, align 4
  %422 = load i32, i32* %5, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 6), i64 0, i64 %423
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [512 x float], [512 x float]* %424, i64 0, i64 %426
  %428 = load float, float* %427, align 4
  %429 = fsub float %428, %421
  store float %429, float* %427, align 4
  %430 = load float, float* @force, align 4
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 7), i64 0, i64 %432
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [512 x float], [512 x float]* %433, i64 0, i64 %435
  %437 = load float, float* %436, align 4
  %438 = fsub float %437, %430
  store float %438, float* %436, align 4
  %439 = load float, float* @force, align 4
  %440 = load i32, i32* %5, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 8), i64 0, i64 %441
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [512 x float], [512 x float]* %442, i64 0, i64 %444
  %446 = load float, float* %445, align 4
  %447 = fadd float %446, %439
  store float %447, float* %445, align 4
  br label %448

448:                                              ; preds = %393
  %449 = load i32, i32* %6, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %6, align 4
  br label %17

451:                                              ; preds = %17
  store i32 0, i32* %7, align 4
  br label %452

452:                                              ; preds = %486, %451
  %453 = load i32, i32* %7, align 4
  %454 = icmp slt i32 %453, 10
  br i1 %454, label %455, label %489

455:                                              ; preds = %452
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %457
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %458, i64 0, i64 %460
  %462 = getelementptr inbounds [512 x float], [512 x float]* %461, i64 0, i64 0
  %463 = load float, float* %462, align 16
  %464 = load i32, i32* %7, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 %465
  %467 = load i32, i32* %5, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %466, i64 0, i64 %468
  %470 = getelementptr inbounds [512 x float], [512 x float]* %469, i64 0, i64 0
  store float %463, float* %470, align 16
  %471 = load i32, i32* %7, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %472
  %474 = load i32, i32* %5, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %473, i64 0, i64 %475
  %477 = getelementptr inbounds [512 x float], [512 x float]* %476, i64 0, i64 511
  %478 = load float, float* %477, align 4
  %479 = load i32, i32* %7, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 %480
  %482 = load i32, i32* %5, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %481, i64 0, i64 %483
  %485 = getelementptr inbounds [512 x float], [512 x float]* %484, i64 0, i64 511
  store float %478, float* %485, align 4
  br label %486

486:                                              ; preds = %455
  %487 = load i32, i32* %7, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %7, align 4
  br label %452

489:                                              ; preds = %452
  br label %490

490:                                              ; preds = %489
  %491 = load i32, i32* %5, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %5, align 4
  br label %12

493:                                              ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Propagate(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %56, %7
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %16, align 4
  br label %24

24:                                               ; preds = %52, %22
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 %30
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %31, i64 0, i64 %35
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [512 x float], [512 x float]* %36, i64 0, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %44
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %45, i64 0, i64 %47
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [512 x float], [512 x float]* %48, i64 0, i64 %50
  store float %42, float* %51, align 4
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %24

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %18

59:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BounceBackBoundaryCondition(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %35, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 512
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @fprop, i64 0, i64 %17
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %18, i64 0, i64 %20
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x float], [512 x float]* %21, i64 0, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %28, i64 0, i64 %30
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x float], [512 x float]* %31, i64 0, i64 %33
  store float %25, float* %34, align 4
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %12

38:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BounceBackBoundaryConditionX(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %58, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %20
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %21, i64 0, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x float], [512 x float]* %24, i64 0, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %30
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %31, i64 0, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x float], [512 x float]* %34, i64 0, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %40
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %41, i64 0, i64 %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x float], [512 x float]* %44, i64 0, i64 %46
  store float %38, float* %47, align 4
  %48 = load float, float* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %50
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %51, i64 0, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [512 x float], [512 x float]* %54, i64 0, i64 %56
  store float %48, float* %57, align 4
  br label %58

58:                                               ; preds = %18
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %14

61:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateRHO() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %48, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 512
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  store i32 2, i32* %2, align 4
  br label %8

8:                                                ; preds = %44, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 511
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x float], [512 x float]* %14, i64 0, i64 %16
  store float 0.000000e+00, float* %17, align 4
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %40, %11
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 9
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 %23
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* %24, i64 0, i64 %26
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x float], [512 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %33
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x float], [512 x float]* %34, i64 0, i64 %36
  %38 = load float, float* %37, align 4
  %39 = fadd float %38, %31
  store float %39, float* %37, align 4
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %18

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %8

47:                                               ; preds = %8
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %4

51:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateJXJY() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %121, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 512
  br i1 %5, label %6, label %124

6:                                                ; preds = %3
  store i32 2, i32* %2, align 4
  br label %7

7:                                                ; preds = %117, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 511
  br i1 %9, label %10, label %120

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 1), i64 0, i64 %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [512 x float], [512 x float]* %13, i64 0, i64 %15
  %17 = load float, float* %16, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 3), i64 0, i64 %19
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x float], [512 x float]* %20, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fsub float %17, %24
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 5), i64 0, i64 %27
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x float], [512 x float]* %28, i64 0, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fadd float %25, %32
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 6), i64 0, i64 %35
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [512 x float], [512 x float]* %36, i64 0, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fsub float %33, %40
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 7), i64 0, i64 %43
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x float], [512 x float]* %44, i64 0, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fsub float %41, %48
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 8), i64 0, i64 %51
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x float], [512 x float]* %52, i64 0, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fadd float %49, %56
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jx, i64 0, i64 %59
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [512 x float], [512 x float]* %60, i64 0, i64 %62
  store float %57, float* %63, align 4
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 1), i64 0, i64 %65
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x float], [512 x float]* %66, i64 0, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 3), i64 0, i64 %72
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x float], [512 x float]* %73, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fsub float %70, %77
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 5), i64 0, i64 %80
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x float], [512 x float]* %81, i64 0, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %78, %85
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 6), i64 0, i64 %88
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [512 x float], [512 x float]* %89, i64 0, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fsub float %86, %93
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 7), i64 0, i64 %96
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [512 x float], [512 x float]* %97, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fsub float %94, %101
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* getelementptr inbounds ([512 x [512 x [512 x float]]], [512 x [512 x [512 x float]]]* @f, i64 0, i64 8), i64 0, i64 %104
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [512 x float], [512 x float]* %105, i64 0, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fadd float %102, %109
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jx, i64 0, i64 %112
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [512 x float], [512 x float]* %113, i64 0, i64 %115
  store float %110, float* %116, align 4
  br label %117

117:                                              ; preds = %10
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  br label %7

120:                                              ; preds = %7
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %1, align 4
  br label %3

124:                                              ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalculateUxyVxy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %63, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %59, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 512
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jx, i64 0, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x float], [512 x float]* %19, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x float], [512 x float]* %26, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fdiv float %23, %30
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @u, i64 0, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x float], [512 x float]* %34, i64 0, i64 %36
  store float %31, float* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jy, i64 0, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x float], [512 x float]* %40, i64 0, i64 %42
  %44 = load float, float* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x float], [512 x float]* %47, i64 0, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fdiv float %44, %51
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @v, i64 0, i64 %54
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x float], [512 x float]* %55, i64 0, i64 %57
  store float %52, float* %58, align 4
  br label %59

59:                                               ; preds = %16
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %13

62:                                               ; preds = %13
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateFinalUprofile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 512
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @jx, i64 0, i64 %19
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x float], [512 x float]* %20, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x [512 x float]], [512 x [512 x float]]* @rho, i64 0, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x float], [512 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fdiv float %24, %31
  %33 = load float, float* %7, align 4
  %34 = fadd float %33, %32
  store float %34, float* %7, align 4
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load float, float* %7, align 4
  %40 = fdiv float %39, 5.120000e+02
  store float %40, float* %7, align 4
  %41 = load float, float* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x float], [512 x float]* @uprofile, i64 0, i64 %43
  store float %41, float* %44, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %9

48:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LBM() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %5, %struct._IO_FILE** %4, align 8
  %6 = load float, float* @FORCING, align 4
  %7 = fpext float %6 to double
  %8 = fdiv double %7, 6.000000e+00
  %9 = fptrunc double %8 to float
  store float %9, float* @force, align 4
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %67, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 200
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %21, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 512
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 8
  call void @CalculateUxyVxy(i32 %18, i32 %20)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %2, align 4
  br label %14

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %32, %24
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 512
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 8
  call void @ValueUpdateMain(i32 %29, i32 %31)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 8
  store i32 %34, i32* %2, align 4
  br label %25

35:                                               ; preds = %25
  call void @Propagate(i32 1, i32 512, i32 0, i32 512, i32 -1, i32 0, i32 1)
  call void @Propagate(i32 0, i32 512, i32 1, i32 512, i32 0, i32 -1, i32 2)
  call void @Propagate(i32 0, i32 511, i32 0, i32 512, i32 1, i32 0, i32 3)
  call void @Propagate(i32 0, i32 512, i32 0, i32 511, i32 0, i32 1, i32 4)
  call void @Propagate(i32 1, i32 512, i32 1, i32 512, i32 -1, i32 -1, i32 5)
  call void @Propagate(i32 0, i32 511, i32 0, i32 512, i32 1, i32 -1, i32 6)
  call void @Propagate(i32 0, i32 511, i32 1, i32 511, i32 1, i32 1, i32 7)
  call void @Propagate(i32 1, i32 512, i32 0, i32 511, i32 -1, i32 1, i32 8)
  call void @Propagate(i32 0, i32 512, i32 0, i32 512, i32 0, i32 0, i32 9)
  call void @BounceBackBoundaryCondition(i32 0, i32 512, i32 0, i32 511, i32 1)
  call void @BounceBackBoundaryCondition(i32 0, i32 512, i32 511, i32 0, i32 3)
  call void @BounceBackBoundaryCondition(i32 1, i32 511, i32 0, i32 511, i32 5)
  call void @BounceBackBoundaryCondition(i32 1, i32 511, i32 511, i32 0, i32 6)
  call void @BounceBackBoundaryCondition(i32 0, i32 511, i32 511, i32 0, i32 7)
  call void @BounceBackBoundaryCondition(i32 0, i32 511, i32 0, i32 511, i32 8)
  call void @BounceBackBoundaryConditionX(i32 0, i32 512, i32 0, i32 2, i32 4)
  call void @BounceBackBoundaryConditionX(i32 0, i32 512, i32 511, i32 2, i32 4)
  call void @BounceBackBoundaryConditionX(i32 0, i32 512, i32 0, i32 5, i32 7)
  call void @BounceBackBoundaryConditionX(i32 0, i32 512, i32 511, i32 7, i32 5)
  call void @BounceBackBoundaryConditionX(i32 0, i32 512, i32 0, i32 6, i32 8)
  call void @BounceBackBoundaryConditionX(i32 0, i32 512, i32 511, i32 8, i32 6)
  call void @UpdateRHO()
  call void @UpdateJXJY()
  %36 = load i32, i32* %1, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 512
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 8
  call void @UpdateFinalUprofile(i32 %47, i32 %49)
  %50 = load i32, i32* %1, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x float], [512 x float]* @uprofile, i64 0, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fpext float %57 to double
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), double %58)
  br label %60

60:                                               ; preds = %52, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %3, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %72 = call i32 @fclose(%struct._IO_FILE* %71)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Plot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store i32 1, i32* %2, align 4
  %4 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** %3, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %25, %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 504
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %19, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 8
  store i32 %27, i32* %1, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* %35)
  %37 = call i32 (i8*, ...) bitcast (i32 (...)* @system to i32 (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @system(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @Init()
  call void @LBM()
  call void @Plot()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
