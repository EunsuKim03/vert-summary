; ModuleID = 'benchmark/cpp_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %70

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = call noundef i32 @_Z6f_goldii(i32 noundef %32, i32 noundef %33)
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 1
  %40 = call noundef i32 @_Z6f_goldii(i32 noundef %37, i32 noundef %39)
  %41 = shl i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %70

42:                                               ; preds = %21
  %43 = load i32, i32* %5, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 1
  %51 = call noundef i32 @_Z6f_goldii(i32 noundef %48, i32 noundef %50)
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %57, %58
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* %5, align 4
  %62 = call noundef i32 @_Z6f_goldii(i32 noundef %60, i32 noundef %61)
  store i32 %62, i32* %3, align 4
  br label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  %67 = ashr i32 %66, 1
  %68 = load i32, i32* %4, align 4
  %69 = call noundef i32 @_Z6f_goldii(i32 noundef %67, i32 noundef %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %56, %47, %35, %30, %19, %14, %9
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
