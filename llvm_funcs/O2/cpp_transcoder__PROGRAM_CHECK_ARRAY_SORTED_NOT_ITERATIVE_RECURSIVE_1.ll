; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp uge i32 %1, 2
  %4 = icmp sgt i32 %1, 1
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = load i32, i32* %0, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, i32* %0, i64 1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %6, %17
  %14 = phi i64 [ %21, %17 ], [ 2, %6 ]
  %15 = phi i32 [ %19, %17 ], [ %11, %6 ]
  %16 = icmp eq i64 %14, %8
  br i1 %16, label %22, label %17, !llvm.loop !9

17:                                               ; preds = %13
  %18 = getelementptr inbounds i32, i32* %0, i64 %14
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp sgt i32 %15, %19
  %21 = add nuw nsw i64 %14, 1
  br i1 %20, label %22, label %13, !llvm.loop !9

22:                                               ; preds = %13, %17
  %23 = icmp uge i64 %14, %7
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %6, %22, %2
  %26 = phi i32 [ 1, %2 ], [ 0, %6 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
