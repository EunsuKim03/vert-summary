; ModuleID = 'benchmark/cpp_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = add i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = zext i32 %6 to i64
  br label %17

10:                                               ; preds = %49, %17
  %11 = phi i32 [ %21, %17 ], [ %50, %49 ]
  %12 = add nuw nsw i64 %20, 1
  %13 = add nuw nsw i64 %19, 1
  %14 = icmp eq i64 %22, %8
  br i1 %14, label %15, label %17, !llvm.loop !5

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 0, %2 ], [ %11, %10 ]
  ret i32 %16

17:                                               ; preds = %4, %10
  %18 = phi i64 [ 0, %4 ], [ %22, %10 ]
  %19 = phi i64 [ 1, %4 ], [ %13, %10 ]
  %20 = phi i64 [ 2, %4 ], [ %12, %10 ]
  %21 = phi i32 [ 0, %4 ], [ %11, %10 ]
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp slt i64 %22, %7
  br i1 %23, label %24, label %10

24:                                               ; preds = %17
  %25 = getelementptr inbounds i32, i32* %0, i64 %18
  %26 = load i32, i32* %25, align 4, !tbaa !8
  br label %27

27:                                               ; preds = %24, %49
  %28 = phi i64 [ %19, %24 ], [ %34, %49 ]
  %29 = phi i64 [ %20, %24 ], [ %51, %49 ]
  %30 = phi i32 [ %21, %24 ], [ %50, %49 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %28
  %32 = load i32, i32* %31, align 4, !tbaa !8
  %33 = icmp sgt i32 %26, %32
  %34 = add nuw nsw i64 %28, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp slt i32 %35, %1
  %37 = select i1 %33, i1 %36, i1 false
  br i1 %37, label %38, label %49

38:                                               ; preds = %27, %38
  %39 = phi i64 [ %46, %38 ], [ %29, %27 ]
  %40 = phi i32 [ %45, %38 ], [ %30, %27 ]
  %41 = getelementptr inbounds i32, i32* %0, i64 %39
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = icmp sgt i32 %32, %42
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %40, %44
  %46 = add nuw nsw i64 %39, 1
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %47, %1
  br i1 %48, label %38, label %49, !llvm.loop !12

49:                                               ; preds = %38, %27
  %50 = phi i32 [ %30, %27 ], [ %45, %38 ]
  %51 = add nuw nsw i64 %29, 1
  %52 = icmp eq i64 %34, %9
  br i1 %52, label %10, label %27, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.cpp() #4 section ".text.startup" {
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
