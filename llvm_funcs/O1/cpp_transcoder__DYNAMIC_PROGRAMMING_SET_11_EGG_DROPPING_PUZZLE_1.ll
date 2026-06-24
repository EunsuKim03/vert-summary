; ModuleID = 'llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  br label %18

13:                                               ; preds = %18, %2
  %14 = icmp slt i32 %1, 1
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds i32, i32* %8, i64 %6
  %17 = zext i32 %5 to i64
  br label %32

18:                                               ; preds = %10, %18
  %19 = phi i64 [ 1, %10 ], [ %23, %18 ]
  %20 = mul nuw nsw i64 %19, %6
  %21 = getelementptr inbounds i32, i32* %8, i64 %20
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 1, i32* %22, align 4, !tbaa !5
  store i32 0, i32* %21, align 4, !tbaa !5
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %13, label %18, !llvm.loop !9

25:                                               ; preds = %32, %13
  %26 = icmp slt i32 %0, 2
  br i1 %26, label %73, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 2
  %29 = add i32 %0, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %5 to i64
  br label %38

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 1, %15 ], [ %36, %32 ]
  %34 = getelementptr inbounds i32, i32* %16, i64 %33
  %35 = trunc i64 %33 to i32
  store i32 %35, i32* %34, align 4, !tbaa !5
  %36 = add nuw nsw i64 %33, 1
  %37 = icmp eq i64 %36, %17
  br i1 %37, label %25, label %32, !llvm.loop !12

38:                                               ; preds = %27, %70
  %39 = phi i64 [ 2, %27 ], [ %71, %70 ]
  br i1 %28, label %70, label %40

40:                                               ; preds = %38
  %41 = mul nuw nsw i64 %39, %6
  %42 = getelementptr inbounds i32, i32* %8, i64 %41
  %43 = add nsw i64 %39, -1
  %44 = mul nuw nsw i64 %43, %6
  %45 = getelementptr inbounds i32, i32* %8, i64 %44
  br label %46

46:                                               ; preds = %40, %66
  %47 = phi i64 [ 2, %40 ], [ %67, %66 ]
  %48 = phi i64 [ 3, %40 ], [ %68, %66 ]
  %49 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 2147483647, i32* %49, align 4, !tbaa !5
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 1, %46 ], [ %64, %50 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  %54 = sub nsw i64 %47, %51
  %55 = getelementptr inbounds i32, i32* %42, i64 %54
  %56 = load i32, i32* %53, align 4
  %57 = load i32, i32* %55, align 4
  %58 = icmp slt i32 %56, %57
  %59 = select i1 %58, i32 %57, i32 %56
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %49, align 4, !tbaa !5
  %62 = icmp slt i32 %60, %61
  %63 = select i1 %62, i32 %60, i32 %61
  store i32 %63, i32* %49, align 4
  %64 = add nuw nsw i64 %51, 1
  %65 = icmp eq i64 %64, %48
  br i1 %65, label %66, label %50, !llvm.loop !13

66:                                               ; preds = %50
  %67 = add nuw nsw i64 %47, 1
  %68 = add nuw nsw i64 %48, 1
  %69 = icmp eq i64 %67, %31
  br i1 %69, label %70, label %46, !llvm.loop !14

70:                                               ; preds = %66, %38
  %71 = add nuw nsw i64 %39, 1
  %72 = icmp eq i64 %71, %30
  br i1 %72, label %73, label %38, !llvm.loop !15

73:                                               ; preds = %70, %25
  %74 = sext i32 %0 to i64
  %75 = mul nsw i64 %6, %74
  %76 = getelementptr inbounds i32, i32* %8, i64 %75
  %77 = sext i32 %1 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !5
  ret i32 %79
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp() #4 section ".text.startup" {
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
