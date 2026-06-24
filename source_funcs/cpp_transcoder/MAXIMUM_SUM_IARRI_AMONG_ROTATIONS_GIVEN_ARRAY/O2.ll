; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %1, 1
  %7 = and i32 %1, -2
  %8 = icmp eq i32 %5, 0
  br label %9

9:                                                ; preds = %4, %26
  %10 = phi i32 [ %30, %26 ], [ 0, %4 ]
  %11 = phi i32 [ %29, %26 ], [ -2147483648, %4 ]
  br i1 %6, label %14, label %32

12:                                               ; preds = %26, %2
  %13 = phi i32 [ -2147483648, %2 ], [ %29, %26 ]
  ret i32 %13

14:                                               ; preds = %32, %9
  %15 = phi i32 [ undef, %9 ], [ %50, %32 ]
  %16 = phi i32 [ 0, %9 ], [ %51, %32 ]
  %17 = phi i32 [ 0, %9 ], [ %50, %32 ]
  br i1 %8, label %26, label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %16, %10
  %20 = srem i32 %19, %1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = mul nsw i32 %23, %16
  %25 = add nsw i32 %24, %17
  br label %26

26:                                               ; preds = %14, %18
  %27 = phi i32 [ %15, %14 ], [ %25, %18 ]
  %28 = icmp slt i32 %11, %27
  %29 = select i1 %28, i32 %27, i32 %11
  %30 = add nuw nsw i32 %10, 1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %12, label %9, !llvm.loop !9

32:                                               ; preds = %9, %32
  %33 = phi i32 [ %51, %32 ], [ 0, %9 ]
  %34 = phi i32 [ %50, %32 ], [ 0, %9 ]
  %35 = phi i32 [ %52, %32 ], [ 0, %9 ]
  %36 = add nuw nsw i32 %33, %10
  %37 = srem i32 %36, %1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = mul nsw i32 %40, %33
  %42 = add nsw i32 %41, %34
  %43 = or i32 %33, 1
  %44 = add nuw nsw i32 %43, %10
  %45 = srem i32 %44, %1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = mul nsw i32 %48, %43
  %50 = add nsw i32 %49, %42
  %51 = add nuw nsw i32 %33, 2
  %52 = add i32 %35, 2
  %53 = icmp eq i32 %52, %7
  br i1 %53, label %14, label %32, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !10}
