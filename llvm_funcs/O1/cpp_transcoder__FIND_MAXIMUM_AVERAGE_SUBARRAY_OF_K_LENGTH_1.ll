; ModuleID = 'benchmark/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* %0, align 4, !tbaa !5
  %7 = icmp sgt i32 %2, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  br label %18

10:                                               ; preds = %18, %5
  %11 = phi i32 [ %6, %5 ], [ %23, %18 ]
  %12 = add nsw i32 %2, -1
  %13 = icmp slt i32 %2, %1
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = sext i32 %2 to i64
  %16 = sext i32 %2 to i64
  %17 = sext i32 %1 to i64
  br label %30

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 1, %8 ], [ %24, %18 ]
  %20 = phi i32 [ %6, %8 ], [ %23, %18 ]
  %21 = getelementptr inbounds i32, i32* %0, i64 %19
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = add nsw i32 %22, %20
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %10, label %18, !llvm.loop !9

26:                                               ; preds = %30, %10
  %27 = phi i32 [ %12, %10 ], [ %45, %30 ]
  %28 = sub i32 1, %2
  %29 = add i32 %28, %27
  br label %48

30:                                               ; preds = %14, %30
  %31 = phi i64 [ %15, %14 ], [ %46, %30 ]
  %32 = phi i32 [ undef, %14 ], [ %41, %30 ]
  %33 = phi i32 [ %12, %14 ], [ %45, %30 ]
  %34 = phi i32 [ %11, %14 ], [ %43, %30 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %31
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, %32
  %38 = sub nsw i64 %31, %16
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = sub i32 %37, %40
  %42 = icmp sgt i32 %41, %34
  %43 = select i1 %42, i32 %41, i32 %34
  %44 = trunc i64 %31 to i32
  %45 = select i1 %42, i32 %44, i32 %33
  %46 = add nsw i64 %31, 1
  %47 = icmp eq i64 %46, %17
  br i1 %47, label %26, label %30, !llvm.loop !12

48:                                               ; preds = %3, %26
  %49 = phi i32 [ %29, %26 ], [ -1, %3 ]
  ret i32 %49
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.cpp() #4 section ".text.startup" {
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
