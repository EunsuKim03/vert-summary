; ModuleID = 'benchmark/cpp_transcoder/COUNT_PAIRS_WHOSE_PRODUCTS_EXIST_IN_ARRAY/COUNT_PAIRS_WHOSE_PRODUCTS_EXIST_IN_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_PAIRS_WHOSE_PRODUCTS_EXIST_IN_ARRAY/COUNT_PAIRS_WHOSE_PRODUCTS_EXIST_IN_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_PAIRS_WHOSE_PRODUCTS_EXIST_IN_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  br label %15

9:                                                ; preds = %40, %15
  %10 = phi i32 [ %18, %15 ], [ %41, %40 ]
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %19, %6
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %9 ]
  ret i32 %14

15:                                               ; preds = %4, %9
  %16 = phi i64 [ 0, %4 ], [ %19, %9 ]
  %17 = phi i64 [ 1, %4 ], [ %11, %9 ]
  %18 = phi i32 [ 0, %4 ], [ %10, %9 ]
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp slt i64 %19, %5
  br i1 %20, label %21, label %9

21:                                               ; preds = %15
  %22 = getelementptr inbounds i32, i32* %0, i64 %16
  %23 = load i32, i32* %22, align 4, !tbaa !8
  br label %24

24:                                               ; preds = %21, %40
  %25 = phi i64 [ %17, %21 ], [ %42, %40 ]
  %26 = phi i32 [ %18, %21 ], [ %41, %40 ]
  %27 = getelementptr inbounds i32, i32* %0, i64 %25
  %28 = load i32, i32* %27, align 4, !tbaa !8
  %29 = mul nsw i32 %28, %23
  br label %32

30:                                               ; preds = %32
  %31 = icmp eq i64 %37, %8
  br i1 %31, label %40, label %32, !llvm.loop !12

32:                                               ; preds = %24, %30
  %33 = phi i64 [ 0, %24 ], [ %37, %30 ]
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = icmp eq i32 %35, %29
  %37 = add nuw nsw i64 %33, 1
  br i1 %36, label %38, label %30

38:                                               ; preds = %32
  %39 = add nsw i32 %26, 1
  br label %40

40:                                               ; preds = %30, %38
  %41 = phi i32 [ %39, %38 ], [ %26, %30 ]
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %7
  br i1 %43, label %9, label %24, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_PAIRS_WHOSE_PRODUCTS_EXIST_IN_ARRAY_processed.cpp() #4 section ".text.startup" {
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
!13 = distinct !{!13, !6, !7}
