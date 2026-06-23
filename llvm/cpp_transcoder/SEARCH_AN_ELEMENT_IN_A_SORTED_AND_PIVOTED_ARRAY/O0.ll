; ModuleID = 'benchmark/cpp_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp, i8* null }]

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
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %101

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %101

29:                                               ; preds = %15
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %34, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %42, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %50, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %9, align 4
  %63 = call noundef i32 @_Z6f_goldPiiii(i32* noundef %58, i32 noundef %59, i32 noundef %61, i32 noundef %62)
  store i32 %63, i32* %5, align 4
  br label %101

64:                                               ; preds = %49, %41
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call noundef i32 @_Z6f_goldPiiii(i32* noundef %65, i32 noundef %67, i32 noundef %68, i32 noundef %69)
  store i32 %70, i32* %5, align 4
  br label %101

71:                                               ; preds = %29
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %72, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %80, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call noundef i32 @_Z6f_goldPiiii(i32* noundef %88, i32 noundef %90, i32 noundef %91, i32 noundef %92)
  store i32 %93, i32* %5, align 4
  br label %101

94:                                               ; preds = %79, %71
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %9, align 4
  %100 = call noundef i32 @_Z6f_goldPiiii(i32* noundef %95, i32 noundef %96, i32 noundef %98, i32 noundef %99)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %94, %87, %64, %57, %27, %14
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp() #0 section ".text.startup" {
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
