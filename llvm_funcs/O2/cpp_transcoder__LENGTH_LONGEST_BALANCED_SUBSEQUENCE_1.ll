; ModuleID = 'benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_1/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_1/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LENGTH_LONGEST_BALANCED_SUBSEQUENCE_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %36

10:                                               ; preds = %67, %4
  %11 = phi i32 [ undef, %4 ], [ %68, %67 ]
  %12 = phi i32 [ undef, %4 ], [ %69, %67 ]
  %13 = phi i64 [ 0, %4 ], [ %70, %67 ]
  %14 = phi i32 [ 0, %4 ], [ %69, %67 ]
  %15 = phi i32 [ 0, %4 ], [ %68, %67 ]
  %16 = icmp eq i64 %6, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds i8, i8* %0, i64 %13
  %19 = load i8, i8* %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 40
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = add nsw i32 %15, -1
  br label %29

25:                                               ; preds = %21
  %26 = add nsw i32 %14, 1
  br label %29

27:                                               ; preds = %17
  %28 = add nsw i32 %15, 1
  br label %29

29:                                               ; preds = %23, %25, %27, %10
  %30 = phi i32 [ %11, %10 ], [ %28, %27 ], [ 0, %25 ], [ %24, %23 ]
  %31 = phi i32 [ %12, %10 ], [ %14, %27 ], [ %26, %25 ], [ %14, %23 ]
  %32 = add i32 %30, %31
  br label %33

33:                                               ; preds = %29, %2
  %34 = phi i32 [ %32, %29 ], [ 0, %2 ]
  %35 = sub i32 %1, %34
  ret i32 %35

36:                                               ; preds = %67, %8
  %37 = phi i64 [ 0, %8 ], [ %70, %67 ]
  %38 = phi i32 [ 0, %8 ], [ %69, %67 ]
  %39 = phi i32 [ 0, %8 ], [ %68, %67 ]
  %40 = phi i64 [ 0, %8 ], [ %71, %67 ]
  %41 = getelementptr inbounds i8, i8* %0, i64 %37
  %42 = load i8, i8* %41, align 1, !tbaa !5
  %43 = icmp eq i8 %42, 40
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = add nsw i32 %39, 1
  br label %52

46:                                               ; preds = %36
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = add nsw i32 %38, 1
  br label %52

50:                                               ; preds = %46
  %51 = add nsw i32 %39, -1
  br label %52

52:                                               ; preds = %44, %50, %48
  %53 = phi i32 [ %45, %44 ], [ 0, %48 ], [ %51, %50 ]
  %54 = phi i32 [ %38, %44 ], [ %49, %48 ], [ %38, %50 ]
  %55 = or i64 %37, 1
  %56 = getelementptr inbounds i8, i8* %0, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 40
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = icmp eq i32 %53, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = add nsw i32 %53, -1
  br label %67

63:                                               ; preds = %59
  %64 = add nsw i32 %54, 1
  br label %67

65:                                               ; preds = %52
  %66 = add nsw i32 %53, 1
  br label %67

67:                                               ; preds = %65, %63, %61
  %68 = phi i32 [ %66, %65 ], [ 0, %63 ], [ %62, %61 ]
  %69 = phi i32 [ %54, %65 ], [ %64, %63 ], [ %54, %61 ]
  %70 = add nuw nsw i64 %37, 2
  %71 = add i64 %40, 2
  %72 = icmp eq i64 %71, %9
  br i1 %72, label %10, label %36, !llvm.loop !8
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_LONGEST_BALANCED_SUBSEQUENCE_1_processed.cpp() #4 section ".text.startup" {
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
