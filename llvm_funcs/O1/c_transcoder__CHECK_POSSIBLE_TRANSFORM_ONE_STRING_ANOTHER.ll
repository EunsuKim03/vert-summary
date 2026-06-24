; ModuleID = 'benchmark/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = add i64 %4, 1
  %8 = and i64 %7, 4294967295
  %9 = mul nuw i64 %8, %6
  %10 = alloca i8, i64 %9, align 16
  %11 = and i64 %3, 2147483648
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = and i64 %4, 2147483648
  %15 = icmp eq i64 %14, 0
  %16 = add i64 %3, 1
  %17 = and i64 %16, 4294967295
  br label %18

18:                                               ; preds = %13, %25
  %19 = phi i64 [ 0, %13 ], [ %26, %25 ]
  br i1 %15, label %20, label %25

20:                                               ; preds = %18
  %21 = mul nuw nsw i64 %8, %19
  %22 = getelementptr i8, i8* %10, i64 %21
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 %8, i1 false), !tbaa !5
  br label %25

23:                                               ; preds = %25, %2
  store i8 1, i8* %10, align 16, !tbaa !5
  %24 = icmp eq i64 %3, 0
  br i1 %24, label %39, label %28

25:                                               ; preds = %20, %18
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %17
  br i1 %27, label %23, label %18, !llvm.loop !9

28:                                               ; preds = %23, %49
  %29 = phi i64 [ %33, %49 ], [ 0, %23 ]
  %30 = mul nuw nsw i64 %29, %8
  %31 = getelementptr inbounds i8, i8* %10, i64 %30
  %32 = getelementptr inbounds i8, i8* %0, i64 %29
  %33 = add nuw nsw i64 %29, 1
  %34 = mul nuw nsw i64 %8, %33
  %35 = getelementptr inbounds i8, i8* %10, i64 %34
  %36 = getelementptr inbounds i8, i8* %0, i64 %29
  %37 = mul nuw nsw i64 %8, %33
  %38 = getelementptr inbounds i8, i8* %10, i64 %37
  br label %51

39:                                               ; preds = %49, %23
  %40 = shl i64 %3, 32
  %41 = ashr exact i64 %40, 32
  %42 = mul nsw i64 %8, %41
  %43 = getelementptr inbounds i8, i8* %10, i64 %42
  %44 = shl i64 %4, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !5, !range !12
  %48 = zext i8 %47 to i32
  ret i32 %48

49:                                               ; preds = %76
  %50 = icmp eq i64 %33, %3
  br i1 %50, label %39, label %28, !llvm.loop !13

51:                                               ; preds = %28, %76
  %52 = phi i64 [ 0, %28 ], [ %77, %76 ]
  %53 = getelementptr inbounds i8, i8* %31, i64 %52
  %54 = load i8, i8* %53, align 1, !tbaa !5, !range !12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %51
  %57 = icmp ugt i64 %4, %52
  br i1 %57, label %58, label %69

58:                                               ; preds = %56
  %59 = load i8, i8* %32, align 1, !tbaa !14
  %60 = sext i8 %59 to i32
  %61 = call i32 @toupper(i32 noundef %60) #4
  %62 = getelementptr inbounds i8, i8* %1, i64 %52
  %63 = load i8, i8* %62, align 1, !tbaa !14
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = add nuw nsw i64 %52, 1
  %68 = getelementptr inbounds i8, i8* %35, i64 %67
  store i8 1, i8* %68, align 1, !tbaa !5
  br label %69

69:                                               ; preds = %66, %58, %56
  %70 = load i8, i8* %36, align 1, !tbaa !14
  %71 = sext i8 %70 to i32
  %72 = call i32 @isupper(i32 noundef %71) #4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, i8* %38, i64 %52
  store i8 1, i8* %75, align 1, !tbaa !5
  br label %76

76:                                               ; preds = %51, %74, %69
  %77 = add nuw nsw i64 %52, 1
  %78 = icmp eq i64 %52, %4
  br i1 %78, label %49, label %51, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @toupper(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @isupper(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{i8 0, i8 2}
!13 = distinct !{!13, !10, !11}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !10, !11}
