; ModuleID = 'llvm/cpp_transcoder/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %8 = call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #7
  %9 = bitcast i8* %8 to i32*
  %10 = add nsw i32 %1, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 0, i32* %12, align 4, !tbaa !5
  %13 = icmp sgt i32 %1, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = add i32 %1, -2
  %16 = sext i32 %1 to i64
  %17 = sext i32 %1 to i64
  %18 = sext i32 %15 to i64
  %19 = sext i32 %1 to i64
  br label %22

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %9, align 4, !tbaa !5
  ret i32 %21

22:                                               ; preds = %14, %57
  %23 = phi i64 [ %18, %14 ], [ %60, %57 ]
  %24 = phi i64 [ %16, %14 ], [ %25, %57 ]
  %25 = add nsw i64 %24, -1
  %26 = getelementptr inbounds i32, i32* %0, i64 %23
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %22
  %30 = trunc i64 %23 to i32
  %31 = xor i32 %30, -1
  %32 = add i32 %31, %1
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = sext i32 %27 to i64
  %36 = add nsw i64 %23, %35
  %37 = add nsw i64 %23, 1
  %38 = icmp slt i64 %37, %19
  %39 = icmp sgt i32 %27, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %46, label %41

41:                                               ; preds = %46, %34
  %42 = phi i32 [ 2147483647, %34 ], [ %52, %46 ]
  %43 = icmp eq i32 %42, 2147483647
  %44 = add nsw i32 %42, 1
  %45 = select i1 %43, i32 2147483647, i32 %44
  br label %57

46:                                               ; preds = %34, %46
  %47 = phi i64 [ %53, %46 ], [ %25, %34 ]
  %48 = phi i32 [ %52, %46 ], [ 2147483647, %34 ]
  %49 = getelementptr inbounds i32, i32* %9, i64 %47
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = icmp sgt i32 %48, %50
  %52 = select i1 %51, i32 %50, i32 %48
  %53 = add nsw i64 %47, 1
  %54 = icmp slt i64 %53, %17
  %55 = icmp slt i64 %47, %36
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %46, label %41, !llvm.loop !9

57:                                               ; preds = %41, %29, %22
  %58 = phi i32 [ 2147483647, %22 ], [ 1, %29 ], [ %45, %41 ]
  %59 = getelementptr inbounds i32, i32* %9, i64 %23
  store i32 %58, i32* %59, align 4, !tbaa !5
  %60 = add nsw i64 %23, -1
  %61 = icmp sgt i64 %23, 0
  br i1 %61, label %22, label %20, !llvm.loop !12
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp() #6 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }

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
