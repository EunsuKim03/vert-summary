; ModuleID = 'benchmark/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.cpp, i8* null }]

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
define dso_local noundef i32 @_Z6f_goldPiiii(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %51

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call noundef i32 @_Z6f_goldPiiii(i32* noundef %38, i32 noundef %40, i32 noundef %41, i32 noundef %42)
  store i32 %43, i32* %5, align 4
  br label %51

44:                                               ; preds = %29
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %9, align 4
  %50 = call noundef i32 @_Z6f_goldPiiii(i32* noundef %45, i32 noundef %46, i32 noundef %48, i32 noundef %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %37, %27, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.cpp() #0 section ".text.startup" {
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
