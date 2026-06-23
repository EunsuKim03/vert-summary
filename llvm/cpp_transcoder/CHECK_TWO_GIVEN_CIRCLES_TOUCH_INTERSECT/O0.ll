; ModuleID = 'benchmark/cpp_transcoder/CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT/CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT/CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT_processed.cpp, i8* null }]

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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z6f_goldiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %26, %27
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 %22, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %48

42:                                               ; preds = %6
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %46, %41
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_CHECK_TWO_GIVEN_CIRCLES_TOUCH_INTERSECT_processed.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
