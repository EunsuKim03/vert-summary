; ModuleID = 'benchmark/cpp_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiiii(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %39, label %6

6:                                                ; preds = %4, %29
  %7 = phi i32 [ %12, %29 ], [ %2, %4 ]
  %8 = phi i32 [ %30, %29 ], [ %1, %4 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  br label %11

11:                                               ; preds = %6, %26
  %12 = phi i32 [ %7, %6 ], [ %27, %26 ]
  %13 = add nsw i32 %12, %8
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %39, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %10, align 4, !tbaa !5
  %21 = icmp sgt i32 %20, %17
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = icmp sgt i32 %20, %3
  %24 = icmp slt i32 %17, %3
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %32, %34, %22
  %27 = add nsw i32 %14, -1
  %28 = icmp slt i32 %8, %14
  br i1 %28, label %11, label %39

29:                                               ; preds = %34, %22
  %30 = add nsw i32 %14, 1
  %31 = icmp slt i32 %14, %12
  br i1 %31, label %6, label %39

32:                                               ; preds = %19
  %33 = icmp sgt i32 %17, %3
  br i1 %33, label %26, label %34

34:                                               ; preds = %32
  %35 = sext i32 %12 to i64
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = icmp slt i32 %37, %3
  br i1 %38, label %26, label %29

39:                                               ; preds = %29, %26, %11, %4
  %40 = phi i32 [ -1, %4 ], [ %14, %11 ], [ -1, %26 ], [ -1, %29 ]
  ret i32 %40
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
