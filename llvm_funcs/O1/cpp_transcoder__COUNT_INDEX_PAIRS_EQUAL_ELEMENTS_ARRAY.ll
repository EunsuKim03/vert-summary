; ModuleID = 'benchmark/cpp_transcoder/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %14

8:                                                ; preds = %23, %14
  %9 = phi i32 [ %17, %14 ], [ %30, %23 ]
  %10 = add nuw nsw i64 %16, 1
  %11 = icmp eq i64 %18, %6
  br i1 %11, label %12, label %14, !llvm.loop !5

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 0, %2 ], [ %9, %8 ]
  ret i32 %13

14:                                               ; preds = %4, %8
  %15 = phi i64 [ 0, %4 ], [ %18, %8 ]
  %16 = phi i64 [ 1, %4 ], [ %10, %8 ]
  %17 = phi i32 [ 0, %4 ], [ %9, %8 ]
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp slt i64 %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %14
  %21 = getelementptr inbounds i32, i32* %0, i64 %15
  %22 = load i32, i32* %21, align 4, !tbaa !8
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %16, %20 ], [ %31, %23 ]
  %25 = phi i32 [ %17, %20 ], [ %30, %23 ]
  %26 = getelementptr inbounds i32, i32* %0, i64 %24
  %27 = load i32, i32* %26, align 4, !tbaa !8
  %28 = icmp eq i32 %22, %27
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %25, %29
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %7
  br i1 %32, label %8, label %23, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
