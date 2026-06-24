; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_TRIPLET_SUM_ARRAY_2_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %36

10:                                               ; preds = %63, %4
  %11 = phi i32 [ undef, %4 ], [ %64, %63 ]
  %12 = phi i32 [ undef, %4 ], [ %65, %63 ]
  %13 = phi i32 [ undef, %4 ], [ %66, %63 ]
  %14 = phi i64 [ 0, %4 ], [ %67, %63 ]
  %15 = phi i32 [ -2147483648, %4 ], [ %66, %63 ]
  %16 = phi i32 [ -2147483648, %4 ], [ %65, %63 ]
  %17 = phi i32 [ -2147483648, %4 ], [ %64, %63 ]
  %18 = icmp eq i64 %6, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds i32, i32* %0, i64 %14
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = icmp sgt i32 %21, %17
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = icmp sgt i32 %21, %16
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = icmp sgt i32 %21, %15
  %27 = select i1 %26, i32 %21, i32 %15
  br label %28

28:                                               ; preds = %19, %23, %25, %10
  %29 = phi i32 [ %11, %10 ], [ %21, %19 ], [ %17, %23 ], [ %17, %25 ]
  %30 = phi i32 [ %12, %10 ], [ %17, %19 ], [ %21, %23 ], [ %16, %25 ]
  %31 = phi i32 [ %13, %10 ], [ %16, %19 ], [ %16, %23 ], [ %27, %25 ]
  %32 = add nsw i32 %30, %29
  %33 = add nsw i32 %32, %31
  br label %34

34:                                               ; preds = %28, %2
  %35 = phi i32 [ %33, %28 ], [ -2147483648, %2 ]
  ret i32 %35

36:                                               ; preds = %63, %8
  %37 = phi i64 [ 0, %8 ], [ %67, %63 ]
  %38 = phi i32 [ -2147483648, %8 ], [ %66, %63 ]
  %39 = phi i32 [ -2147483648, %8 ], [ %65, %63 ]
  %40 = phi i32 [ -2147483648, %8 ], [ %64, %63 ]
  %41 = phi i64 [ 0, %8 ], [ %68, %63 ]
  %42 = getelementptr inbounds i32, i32* %0, i64 %37
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = icmp sgt i32 %43, %40
  br i1 %44, label %50, label %45

45:                                               ; preds = %36
  %46 = icmp sgt i32 %43, %39
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = icmp sgt i32 %43, %38
  %49 = select i1 %48, i32 %43, i32 %38
  br label %50

50:                                               ; preds = %47, %45, %36
  %51 = phi i32 [ %43, %36 ], [ %40, %45 ], [ %40, %47 ]
  %52 = phi i32 [ %40, %36 ], [ %43, %45 ], [ %39, %47 ]
  %53 = phi i32 [ %39, %36 ], [ %39, %45 ], [ %49, %47 ]
  %54 = or i64 %37, 1
  %55 = getelementptr inbounds i32, i32* %0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = icmp sgt i32 %56, %51
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = icmp sgt i32 %56, %52
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = icmp sgt i32 %56, %53
  %62 = select i1 %61, i32 %56, i32 %53
  br label %63

63:                                               ; preds = %60, %58, %50
  %64 = phi i32 [ %56, %50 ], [ %51, %58 ], [ %51, %60 ]
  %65 = phi i32 [ %51, %50 ], [ %56, %58 ], [ %52, %60 ]
  %66 = phi i32 [ %52, %50 ], [ %52, %58 ], [ %62, %60 ]
  %67 = add nuw nsw i64 %37, 2
  %68 = add i64 %41, 2
  %69 = icmp eq i64 %68, %9
  br i1 %69, label %10, label %36, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_TRIPLET_SUM_ARRAY_2_reprocessed.cpp() #4 section ".text.startup" {
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
