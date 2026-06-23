; ModuleID = 'benchmark/c_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 0
  %7 = sext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %1 to i64
  br label %10

10:                                               ; preds = %90, %2
  %11 = phi i64 [ %14, %90 ], [ %7, %2 ]
  %12 = phi i32 [ %91, %90 ], [ undef, %2 ]
  %13 = phi i8 [ %92, %90 ], [ 0, %2 ]
  %14 = add nsw i64 %11, -1
  %15 = icmp sgt i64 %11, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %10
  br i1 %6, label %17, label %90

17:                                               ; preds = %16
  %18 = getelementptr inbounds i32, i32* %0, i64 %14
  %19 = and i64 %14, 4294967295
  %20 = and i64 %14, 4294967295
  %21 = and i64 %14, 4294967295
  br label %22

22:                                               ; preds = %17, %83
  %23 = phi i64 [ 0, %17 ], [ %86, %83 ]
  %24 = phi i64 [ 1, %17 ], [ %88, %83 ]
  %25 = phi i64 [ 2, %17 ], [ %87, %83 ]
  %26 = phi i8 [ %13, %17 ], [ %85, %83 ]
  %27 = phi i32 [ %12, %17 ], [ %84, %83 ]
  %28 = icmp eq i64 %21, %23
  br i1 %28, label %83, label %29

29:                                               ; preds = %22
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp slt i64 %30, %7
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = getelementptr inbounds i32, i32* %0, i64 %23
  %34 = trunc i64 %23 to i32
  %35 = trunc i64 %30 to i32
  br label %36

36:                                               ; preds = %32, %71
  %37 = phi i64 [ %24, %32 ], [ %74, %71 ]
  %38 = phi i64 [ %25, %32 ], [ %76, %71 ]
  %39 = phi i32 [ %35, %32 ], [ %75, %71 ]
  %40 = phi i32 [ %34, %32 ], [ %39, %71 ]
  %41 = phi i8 [ %26, %32 ], [ %73, %71 ]
  %42 = phi i32 [ %27, %32 ], [ %72, %71 ]
  %43 = icmp eq i64 %20, %37
  br i1 %43, label %71, label %44

44:                                               ; preds = %36
  %45 = add nuw nsw i32 %40, 2
  %46 = icmp slt i32 %45, %1
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = getelementptr inbounds i32, i32* %0, i64 %37
  br label %49

49:                                               ; preds = %47, %62
  %50 = phi i64 [ %38, %47 ], [ %63, %62 ]
  %51 = phi i1 [ %46, %47 ], [ %65, %62 ]
  %52 = icmp eq i64 %19, %50
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %18, align 4, !tbaa !5
  %55 = load i32, i32* %33, align 4, !tbaa !5
  %56 = load i32, i32* %48, align 4, !tbaa !5
  %57 = add nsw i32 %56, %55
  %58 = getelementptr inbounds i32, i32* %0, i64 %50
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = add nsw i32 %57, %59
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %53, %49
  %63 = add nuw nsw i64 %50, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp slt i32 %64, %1
  br i1 %65, label %49, label %66, !llvm.loop !9

66:                                               ; preds = %62, %53, %44
  %67 = phi i1 [ %46, %44 ], [ %65, %62 ], [ %51, %53 ]
  %68 = phi i32 [ %42, %44 ], [ %42, %62 ], [ %54, %53 ]
  %69 = phi i8 [ %41, %44 ], [ %41, %62 ], [ 1, %53 ]
  %70 = phi i32 [ 11, %44 ], [ 11, %62 ], [ 1, %53 ]
  br i1 %67, label %78, label %71

71:                                               ; preds = %66, %36
  %72 = phi i32 [ %42, %36 ], [ %68, %66 ]
  %73 = phi i8 [ %41, %36 ], [ %69, %66 ]
  %74 = add nuw nsw i64 %37, 1
  %75 = add nuw nsw i32 %39, 1
  %76 = add nuw nsw i64 %38, 1
  %77 = icmp eq i64 %74, %9
  br i1 %77, label %78, label %36, !llvm.loop !12

78:                                               ; preds = %66, %71, %29
  %79 = phi i32 [ %27, %29 ], [ %68, %66 ], [ %72, %71 ]
  %80 = phi i8 [ %26, %29 ], [ %69, %66 ], [ %73, %71 ]
  %81 = phi i32 [ 8, %29 ], [ %70, %66 ], [ 8, %71 ]
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %90

83:                                               ; preds = %78, %22
  %84 = phi i32 [ %27, %22 ], [ %79, %78 ]
  %85 = phi i8 [ %26, %22 ], [ %80, %78 ]
  %86 = add nuw nsw i64 %23, 1
  %87 = add nuw nsw i64 %25, 1
  %88 = add nuw nsw i64 %24, 1
  %89 = icmp eq i64 %86, %8
  br i1 %89, label %90, label %22, !llvm.loop !13

90:                                               ; preds = %78, %83, %16
  %91 = phi i32 [ %12, %16 ], [ %79, %78 ], [ %84, %83 ]
  %92 = phi i8 [ %13, %16 ], [ %80, %78 ], [ %85, %83 ]
  %93 = phi i32 [ 5, %16 ], [ %81, %78 ], [ 5, %83 ]
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %10, label %95, !llvm.loop !14

95:                                               ; preds = %10, %90
  %96 = phi i32 [ %91, %90 ], [ %12, %10 ]
  %97 = phi i8 [ %92, %90 ], [ %13, %10 ]
  %98 = phi i32 [ %93, %90 ], [ 2, %10 ]
  %99 = icmp eq i32 %98, 2
  %100 = and i8 %97, 1
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  %103 = select i1 %102, i32 -2147483648, i32 %96
  ret i32 %103
}

declare i32 @sort(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
