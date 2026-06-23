; ModuleID = 'benchmark/cpp_transcoder/COUNTS_PATHS_POINT_REACH_ORIGIN_1/COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNTS_PATHS_POINT_REACH_ORIGIN_1/COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  br label %17

13:                                               ; preds = %17, %2
  %14 = icmp slt i32 %1, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = zext i32 %5 to i64
  br label %30

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %21, %17 ]
  %19 = mul nuw nsw i64 %18, %6
  %20 = getelementptr inbounds i32, i32* %8, i64 %19
  store i32 1, i32* %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %17, !llvm.loop !9

23:                                               ; preds = %30, %13
  %24 = icmp slt i32 %0, 1
  br i1 %24, label %48, label %25

25:                                               ; preds = %23
  %26 = icmp slt i32 %1, 1
  %27 = add i32 %0, 1
  %28 = zext i32 %27 to i64
  %29 = zext i32 %5 to i64
  br label %35

30:                                               ; preds = %15, %30
  %31 = phi i64 [ 0, %15 ], [ %33, %30 ]
  %32 = getelementptr inbounds i32, i32* %8, i64 %31
  store i32 1, i32* %32, align 4, !tbaa !5
  %33 = add nuw nsw i64 %31, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %23, label %30, !llvm.loop !12

35:                                               ; preds = %25, %55
  %36 = phi i64 [ 0, %25 ], [ %58, %55 ]
  %37 = phi i64 [ 1, %25 ], [ %56, %55 ]
  br i1 %26, label %55, label %38

38:                                               ; preds = %35
  %39 = mul i64 %36, %6
  %40 = add i64 %39, %6
  %41 = getelementptr i32, i32* %8, i64 %40
  %42 = add nsw i64 %37, -1
  %43 = mul nuw nsw i64 %42, %6
  %44 = getelementptr inbounds i32, i32* %8, i64 %43
  %45 = mul nuw nsw i64 %37, %6
  %46 = getelementptr inbounds i32, i32* %8, i64 %45
  %47 = load i32, i32* %41, align 4
  br label %59

48:                                               ; preds = %55, %23
  %49 = sext i32 %0 to i64
  %50 = mul nsw i64 %6, %49
  %51 = getelementptr inbounds i32, i32* %8, i64 %50
  %52 = sext i32 %1 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !5
  ret i32 %54

55:                                               ; preds = %59, %35
  %56 = add nuw nsw i64 %37, 1
  %57 = icmp eq i64 %56, %28
  %58 = add i64 %36, 1
  br i1 %57, label %48, label %35, !llvm.loop !13

59:                                               ; preds = %38, %59
  %60 = phi i32 [ %47, %38 ], [ %64, %59 ]
  %61 = phi i64 [ 1, %38 ], [ %66, %59 ]
  %62 = getelementptr inbounds i32, i32* %44, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = add nsw i32 %60, %63
  %65 = getelementptr inbounds i32, i32* %46, i64 %61
  store i32 %64, i32* %65, align 4, !tbaa !5
  %66 = add nuw nsw i64 %61, 1
  %67 = icmp eq i64 %66, %29
  br i1 %67, label %55, label %59, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
