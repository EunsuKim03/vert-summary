; ModuleID = 'benchmark/cpp_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %10

8:                                                ; preds = %37
  %9 = icmp eq i64 %39, %6
  br i1 %9, label %40, label %10, !llvm.loop !5

10:                                               ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %39, %8 ]
  %12 = phi i32 [ 0, %5 ], [ %32, %8 ]
  %13 = phi i32 [ undef, %5 ], [ %38, %8 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %11
  br label %15

15:                                               ; preds = %10, %23
  %16 = phi i64 [ 0, %10 ], [ %24, %23 ]
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds i32, i32* %0, i64 %16
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = load i32, i32* %14, align 4, !tbaa !8
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %15, %18
  %24 = add nuw nsw i64 %16, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %28, label %15, !llvm.loop !12

26:                                               ; preds = %18
  %27 = trunc i64 %16 to i32
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi i32 [ %27, %26 ], [ %1, %23 ]
  %30 = icmp eq i32 %29, %1
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %12, %31
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds i32, i32* %0, i64 %11
  %36 = load i32, i32* %35, align 4, !tbaa !8
  br label %37

37:                                               ; preds = %28, %34
  %38 = phi i32 [ %36, %34 ], [ %13, %28 ]
  %39 = add nuw nsw i64 %11, 1
  br i1 %33, label %40, label %8

40:                                               ; preds = %37, %8, %3
  %41 = phi i32 [ -1, %3 ], [ %38, %37 ], [ -1, %8 ]
  ret i32 %41
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_processed.cpp() #4 section ".text.startup" {
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
