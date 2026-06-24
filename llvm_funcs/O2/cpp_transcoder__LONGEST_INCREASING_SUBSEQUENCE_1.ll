; ModuleID = 'llvm/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_INCREASING_SUBSEQUENCE_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %24, label %6

6:                                                ; preds = %48, %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = icmp ult i32 %1, 2
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i32, i32* %4, i64 1
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32* [ %19, %12 ], [ %11, %10 ]
  %14 = phi i32* [ %18, %12 ], [ %4, %10 ]
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = load i32, i32* %13, align 4, !tbaa !5
  %17 = icmp slt i32 %15, %16
  %18 = select i1 %17, i32* %13, i32* %14
  %19 = getelementptr inbounds i32, i32* %13, i64 1
  %20 = icmp eq i32* %19, %8
  br i1 %20, label %21, label %12, !llvm.loop !9

21:                                               ; preds = %12, %6
  %22 = phi i32* [ %4, %6 ], [ %18, %12 ]
  %23 = load i32, i32* %22, align 4, !tbaa !5
  ret i32 %23

24:                                               ; preds = %2, %48
  %25 = phi i64 [ %51, %48 ], [ 0, %2 ]
  %26 = phi i64 [ %49, %48 ], [ 1, %2 ]
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  store i32 1, i32* %27, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, i32* %0, i64 %26
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = and i64 %26, 1
  %31 = icmp eq i64 %25, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = and i64 %26, 9223372036854775806
  br label %52

34:                                               ; preds = %77, %24
  %35 = phi i32 [ 1, %24 ], [ %78, %77 ]
  %36 = phi i64 [ 0, %24 ], [ %79, %77 ]
  %37 = icmp eq i64 %30, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds i32, i32* %0, i64 %36
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = icmp sgt i32 %29, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds i32, i32* %4, i64 %36
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp sgt i32 %35, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = add nsw i32 %44, 1
  store i32 %47, i32* %27, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %38, %42, %46, %34
  %49 = add nuw nsw i64 %26, 1
  %50 = icmp eq i64 %49, %3
  %51 = add i64 %25, 1
  br i1 %50, label %6, label %24, !llvm.loop !11

52:                                               ; preds = %77, %32
  %53 = phi i32 [ 1, %32 ], [ %78, %77 ]
  %54 = phi i64 [ 0, %32 ], [ %79, %77 ]
  %55 = phi i64 [ 0, %32 ], [ %80, %77 ]
  %56 = getelementptr inbounds i32, i32* %0, i64 %54
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = icmp sgt i32 %29, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds i32, i32* %4, i64 %54
  %61 = load i32, i32* %60, align 8, !tbaa !5
  %62 = icmp sgt i32 %53, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = add nsw i32 %61, 1
  store i32 %64, i32* %27, align 4, !tbaa !5
  br label %65

65:                                               ; preds = %52, %59, %63
  %66 = phi i32 [ %53, %52 ], [ %53, %59 ], [ %64, %63 ]
  %67 = or i64 %54, 1
  %68 = getelementptr inbounds i32, i32* %0, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !5
  %70 = icmp sgt i32 %29, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = getelementptr inbounds i32, i32* %4, i64 %67
  %73 = load i32, i32* %72, align 4, !tbaa !5
  %74 = icmp sgt i32 %66, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = add nsw i32 %73, 1
  store i32 %76, i32* %27, align 4, !tbaa !5
  br label %77

77:                                               ; preds = %75, %71, %65
  %78 = phi i32 [ %66, %65 ], [ %66, %71 ], [ %76, %75 ]
  %79 = add nuw nsw i64 %54, 2
  %80 = add i64 %55, 2
  %81 = icmp eq i64 %80, %33
  br i1 %81, label %34, label %52, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_INCREASING_SUBSEQUENCE_1_reprocessed.cpp() #4 section ".text.startup" {
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
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
