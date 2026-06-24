; ModuleID = 'benchmark/cpp_transcoder/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = and i64 %6, 1
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = and i64 %6, 4294967294
  br label %25

11:                                               ; preds = %25, %5
  %12 = phi i32 [ undef, %5 ], [ %42, %25 ]
  %13 = phi i64 [ 0, %5 ], [ %45, %25 ]
  %14 = phi i32 [ %2, %5 ], [ %44, %25 ]
  %15 = phi i32 [ 0, %5 ], [ %42, %25 ]
  %16 = icmp eq i64 %7, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i32, i32* %0, i64 %13
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp slt i32 %14, %19
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %15, %21
  br label %23

23:                                               ; preds = %17, %11, %3
  %24 = phi i32 [ 0, %3 ], [ %12, %11 ], [ %22, %17 ]
  ret i32 %24

25:                                               ; preds = %25, %9
  %26 = phi i64 [ 0, %9 ], [ %45, %25 ]
  %27 = phi i32 [ %2, %9 ], [ %44, %25 ]
  %28 = phi i32 [ 0, %9 ], [ %42, %25 ]
  %29 = phi i64 [ 0, %9 ], [ %46, %25 ]
  %30 = getelementptr inbounds i32, i32* %0, i64 %26
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = icmp slt i32 %27, %31
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %28, %33
  %35 = select i1 %32, i32 %2, i32 %27
  %36 = sub nsw i32 %35, %31
  %37 = or i64 %26, 1
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = icmp slt i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %34, %41
  %43 = select i1 %40, i32 %2, i32 %36
  %44 = sub nsw i32 %43, %39
  %45 = add nuw nsw i64 %26, 2
  %46 = add i64 %29, 2
  %47 = icmp eq i64 %46, %10
  br i1 %47, label %11, label %25, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS_processed.cpp() #4 section ".text.startup" {
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
