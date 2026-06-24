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
  br label %4

4:                                                ; preds = %40, %2
  %5 = phi i32 [ 0, %2 ], [ %26, %40 ]
  %6 = phi i32 [ 1, %2 ], [ %41, %40 ]
  %7 = icmp slt i32 %5, %1
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = sext i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %16
  %11 = phi i64 [ %9, %8 ], [ %17, %16 ]
  %12 = phi i32 [ %5, %8 ], [ %18, %16 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 %11
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = add i64 %11, 2
  %18 = add nsw i32 %12, 2
  %19 = icmp slt i64 %17, %3
  br i1 %19, label %10, label %22, !llvm.loop !9

20:                                               ; preds = %10
  %21 = trunc i64 %11 to i32
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i32 [ %21, %20 ], [ %18, %16 ]
  %24 = xor i1 %15, true
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi i32 [ %5, %4 ], [ %23, %22 ]
  %27 = phi i1 [ false, %4 ], [ %24, %22 ]
  %28 = icmp slt i32 %6, %1
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = sext i32 %6 to i64
  br label %31

31:                                               ; preds = %29, %36
  %32 = phi i64 [ %30, %29 ], [ %37, %36 ]
  %33 = getelementptr inbounds i32, i32* %0, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = add i64 %32, 2
  %38 = icmp slt i64 %37, %3
  br i1 %38, label %31, label %49, !llvm.loop !11

39:                                               ; preds = %31
  br i1 %27, label %40, label %49

40:                                               ; preds = %39
  %41 = trunc i64 %32 to i32
  %42 = sext i32 %26 to i64
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = shl i64 %32, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds i32, i32* %0, i64 %45
  %47 = load i32, i32* %43, align 4, !tbaa !5
  %48 = load i32, i32* %46, align 4, !tbaa !5
  store i32 %48, i32* %43, align 4, !tbaa !5
  store i32 %47, i32* %46, align 4, !tbaa !5
  br label %4, !llvm.loop !12

49:                                               ; preds = %39, %25, %36
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
