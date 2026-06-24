; ModuleID = 'benchmark/cpp_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = sext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %11

9:                                                ; preds = %34, %2
  %10 = phi i32 [ 0, %2 ], [ %36, %34 ]
  ret i32 %10

11:                                               ; preds = %4, %34
  %12 = phi i64 [ 1, %4 ], [ %15, %34 ]
  %13 = phi i64 [ 2, %4 ], [ %37, %34 ]
  %14 = phi i32 [ 0, %4 ], [ %36, %34 ]
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp slt i64 %15, %6
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds i32, i32* %0, i64 %12
  %19 = load i32, i32* %18, align 4, !tbaa !5
  br label %24

20:                                               ; preds = %24, %11
  %21 = phi i32 [ 0, %11 ], [ %31, %24 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %12
  %23 = load i32, i32* %22, align 4, !tbaa !5
  br label %39

24:                                               ; preds = %17, %24
  %25 = phi i64 [ %13, %17 ], [ %32, %24 ]
  %26 = phi i32 [ 0, %17 ], [ %31, %24 ]
  %27 = getelementptr inbounds i32, i32* %0, i64 %25
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = icmp sgt i32 %19, %28
  %30 = zext i1 %29 to i32
  %31 = add nuw nsw i32 %26, %30
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, %8
  br i1 %33, label %20, label %24, !llvm.loop !9

34:                                               ; preds = %39
  %35 = mul nsw i32 %47, %21
  %36 = add nuw nsw i32 %35, %14
  %37 = add nuw nsw i64 %13, 1
  %38 = icmp eq i64 %15, %7
  br i1 %38, label %9, label %11, !llvm.loop !12

39:                                               ; preds = %20, %39
  %40 = phi i64 [ %12, %20 ], [ %42, %39 ]
  %41 = phi i32 [ 0, %20 ], [ %47, %39 ]
  %42 = add nsw i64 %40, -1
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp slt i32 %23, %44
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %41, %46
  %48 = icmp sgt i64 %40, 1
  br i1 %48, label %39, label %34, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1_processed.cpp() #4 section ".text.startup" {
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
