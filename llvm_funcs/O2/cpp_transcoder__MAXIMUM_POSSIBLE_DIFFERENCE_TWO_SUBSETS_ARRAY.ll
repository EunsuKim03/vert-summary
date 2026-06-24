; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %12

7:                                                ; preds = %38
  %8 = sub nsw i32 %39, %40
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %11 = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  ret i32 %11

12:                                               ; preds = %4, %38
  %13 = phi i64 [ 0, %4 ], [ %17, %38 ]
  %14 = phi i64 [ 1, %4 ], [ %41, %38 ]
  %15 = phi i32 [ 0, %4 ], [ %40, %38 ]
  %16 = phi i32 [ 0, %4 ], [ %39, %38 ]
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp ult i64 %17, %5
  %19 = getelementptr inbounds i32, i32* %0, i64 %13
  %20 = load i32, i32* %19, align 4, !tbaa !5
  br i1 %18, label %21, label %32

21:                                               ; preds = %12, %29
  %22 = phi i64 [ %30, %29 ], [ %14, %12 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = and i64 %22, 4294967295
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  store i32 0, i32* %28, align 4, !tbaa !5
  store i32 0, i32* %19, align 4, !tbaa !5
  br label %38

29:                                               ; preds = %21
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %6
  br i1 %31, label %32, label %21, !llvm.loop !9

32:                                               ; preds = %29, %12
  %33 = icmp sgt i32 %20, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = add nsw i32 %20, %16
  br label %38

36:                                               ; preds = %32
  %37 = add nsw i32 %20, %15
  br label %38

38:                                               ; preds = %26, %34, %36
  %39 = phi i32 [ %35, %34 ], [ %16, %36 ], [ %16, %26 ]
  %40 = phi i32 [ %15, %34 ], [ %37, %36 ], [ %15, %26 ]
  %41 = add nuw nsw i64 %14, 1
  %42 = icmp eq i64 %17, %6
  br i1 %42, label %7, label %12, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
