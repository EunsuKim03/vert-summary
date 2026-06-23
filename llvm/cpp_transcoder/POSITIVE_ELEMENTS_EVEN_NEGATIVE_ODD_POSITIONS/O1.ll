; ModuleID = 'benchmark/cpp_transcoder/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  br label %5

5:                                                ; preds = %51, %2
  %6 = phi i32 [ 0, %2 ], [ %27, %51 ]
  %7 = phi i32 [ 1, %2 ], [ %48, %51 ]
  %8 = icmp slt i32 %6, %1
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %18, label %26

14:                                               ; preds = %18
  %15 = getelementptr inbounds i32, i32* %0, i64 %21
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %24, !llvm.loop !9

18:                                               ; preds = %9, %14
  %19 = phi i32 [ %22, %14 ], [ %6, %9 ]
  %20 = phi i64 [ %21, %14 ], [ %10, %9 ]
  %21 = add i64 %20, 2
  %22 = add nsw i32 %19, 2
  %23 = icmp slt i64 %21, %3
  br i1 %23, label %14, label %26, !llvm.loop !9

24:                                               ; preds = %14
  %25 = trunc i64 %21 to i32
  br label %26

26:                                               ; preds = %18, %9, %24, %5
  %27 = phi i32 [ %6, %5 ], [ %25, %24 ], [ %6, %9 ], [ %22, %18 ]
  %28 = phi i1 [ %8, %5 ], [ %23, %24 ], [ %8, %9 ], [ %23, %18 ]
  %29 = icmp slt i32 %7, %1
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = sext i32 %7 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %39, label %47

35:                                               ; preds = %39
  %36 = getelementptr inbounds i32, i32* %0, i64 %42
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %45, !llvm.loop !12

39:                                               ; preds = %30, %35
  %40 = phi i32 [ %43, %35 ], [ %7, %30 ]
  %41 = phi i64 [ %42, %35 ], [ %31, %30 ]
  %42 = add i64 %41, 2
  %43 = add nsw i32 %40, 2
  %44 = icmp slt i64 %42, %4
  br i1 %44, label %35, label %47, !llvm.loop !12

45:                                               ; preds = %35
  %46 = trunc i64 %42 to i32
  br label %47

47:                                               ; preds = %39, %30, %45, %26
  %48 = phi i32 [ %7, %26 ], [ %46, %45 ], [ %7, %30 ], [ %43, %39 ]
  %49 = phi i1 [ %29, %26 ], [ %44, %45 ], [ %29, %30 ], [ %44, %39 ]
  %50 = select i1 %28, i1 %49, i1 false
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = sext i32 %27 to i64
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = sext i32 %48 to i64
  %55 = getelementptr inbounds i32, i32* %0, i64 %54
  %56 = load i32, i32* %53, align 4, !tbaa !5
  %57 = load i32, i32* %55, align 4, !tbaa !5
  store i32 %57, i32* %53, align 4, !tbaa !5
  store i32 %56, i32* %55, align 4, !tbaa !5
  br label %5, !llvm.loop !13

58:                                               ; preds = %47
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
