; ModuleID = 'llvm/cpp_transcoder/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 -2147483648, i32* %4, align 16, !tbaa !5
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = add nsw i64 %3, -1
  %8 = and i64 %7, 1
  %9 = icmp eq i32 %1, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = and i64 %7, -2
  br label %25

12:                                               ; preds = %25, %6
  %13 = phi i32 [ -2147483648, %6 ], [ %39, %25 ]
  %14 = phi i64 [ 1, %6 ], [ %41, %25 ]
  %15 = icmp eq i64 %8, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = add nsw i64 %14, -1
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %13, %19
  %21 = select i1 %20, i32 %19, i32 %13
  %22 = getelementptr inbounds i32, i32* %4, i64 %14
  store i32 %21, i32* %22, align 4, !tbaa !5
  br label %23

23:                                               ; preds = %16, %12, %2
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %44, label %61

25:                                               ; preds = %25, %10
  %26 = phi i32 [ -2147483648, %10 ], [ %39, %25 ]
  %27 = phi i64 [ 1, %10 ], [ %41, %25 ]
  %28 = phi i64 [ 0, %10 ], [ %42, %25 ]
  %29 = add nsw i64 %27, -1
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %26, %31
  %33 = select i1 %32, i32 %31, i32 %26
  %34 = getelementptr inbounds i32, i32* %4, i64 %27
  store i32 %33, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i64 %27, 1
  %36 = getelementptr inbounds i32, i32* %0, i64 %27
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %33, %37
  %39 = select i1 %38, i32 %37, i32 %33
  %40 = getelementptr inbounds i32, i32* %4, i64 %35
  store i32 %39, i32* %40, align 4, !tbaa !5
  %41 = add nuw nsw i64 %27, 2
  %42 = add i64 %28, 2
  %43 = icmp eq i64 %42, %11
  br i1 %43, label %12, label %25, !llvm.loop !9

44:                                               ; preds = %23, %56
  %45 = phi i64 [ %47, %56 ], [ %3, %23 ]
  %46 = phi i32 [ %57, %56 ], [ 2147483647, %23 ]
  %47 = add nsw i64 %45, -1
  %48 = and i64 %47, 4294967295
  %49 = getelementptr inbounds i32, i32* %4, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %0, i64 %48
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = icmp slt i32 %50, %52
  %54 = icmp sgt i32 %46, %52
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = select i1 %54, i32 %52, i32 %46
  %58 = icmp sgt i64 %45, 1
  br i1 %58, label %44, label %61, !llvm.loop !11

59:                                               ; preds = %44
  %60 = trunc i64 %47 to i32
  br label %61

61:                                               ; preds = %56, %59, %23
  %62 = phi i32 [ -1, %23 ], [ %60, %59 ], [ -1, %56 ]
  ret i32 %62
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT_reprocessed.cpp() #4 section ".text.startup" {
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
