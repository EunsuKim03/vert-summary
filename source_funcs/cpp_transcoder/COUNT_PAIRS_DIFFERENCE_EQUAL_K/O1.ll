; ModuleID = 'benchmark/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  br label %15

9:                                                ; preds = %24, %15
  %10 = phi i32 [ %18, %15 ], [ %35, %24 ]
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %19, %7
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %3 ], [ %10, %9 ]
  ret i32 %14

15:                                               ; preds = %5, %9
  %16 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %17 = phi i64 [ 1, %5 ], [ %11, %9 ]
  %18 = phi i32 [ 0, %5 ], [ %10, %9 ]
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp slt i64 %19, %6
  br i1 %20, label %21, label %9

21:                                               ; preds = %15
  %22 = getelementptr inbounds i32, i32* %0, i64 %16
  %23 = load i32, i32* %22, align 4, !tbaa !8
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ %17, %21 ], [ %36, %24 ]
  %26 = phi i32 [ %18, %21 ], [ %35, %24 ]
  %27 = getelementptr inbounds i32, i32* %0, i64 %25
  %28 = load i32, i32* %27, align 4, !tbaa !8
  %29 = sub nsw i32 %23, %28
  %30 = icmp eq i32 %29, %2
  %31 = sub nsw i32 %28, %23
  %32 = icmp eq i32 %31, %2
  %33 = select i1 %30, i1 true, i1 %32
  %34 = zext i1 %33 to i32
  %35 = add nsw i32 %26, %34
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %8
  br i1 %37, label %9, label %24, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp() #4 section ".text.startup" {
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
